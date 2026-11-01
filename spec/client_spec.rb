# frozen_string_literal: true

RSpec.describe Swarmkit::Client do
  before(:context) do
    @directory = Dir.mktmpdir('swarmkit-spec')
    @ready = Queue.new
    @stop = Queue.new
    @server_thread = Thread.new do
      SpecServer.start(@directory) do |options, control, logs|
        @ready << [options, control, logs]
        @stop.pop
      end
    end
    @options, @control, @logs = @ready.pop
  end

  after(:context) do
    @stop << true
    @server_thread.value
    FileUtils.remove_entry(@directory)
  end

  let(:api) { Swarmkit::API }
  let(:client) { described_class.new(**@options) }

  after { client.close }

  it 'reads complete typed responses over a TLS Unix socket and passes metadata' do
    result = client.control.get_service(api::GetServiceRequest.new(service_id: 'service-1'), metadata: {'test-id' => 'spec'})
    expect(result.service.spec.task.container.image).to eq('example:v1')
    expect(result.service.spec.task.container.env).to eq(['A=B'])
    expect(result.service.spec.annotations.labels.to_h).to eq('owner' => 'spec')
    expect(result.service.spec.replicated.replicas).to eq(2)
    request, metadata = @control.requests.pop
    expect(request.service_id).to eq('service-1')
    expect(metadata).to include('test-id' => 'spec')
  end

  it 'preserves the full spec and optimistic version in an update request' do
    service = client.control.get_service(api::GetServiceRequest.new(service_id: 'service-1')).service
    @control.requests.pop
    service.spec.task.container.image = 'example:v2'
    response = client.control.update_service(api::UpdateServiceRequest.new(
                                               service_id: service.id, service_version: service.meta.version, spec: service.spec
                                             ))
    expect(response).to be_a(api::UpdateServiceResponse)
    update = @control.requests.pop
    expect(update.service_version.index).to eq(42)
    expect(update.spec.task.container.image).to eq('example:v2')
    expect(update.spec.task.container.env).to eq(['A=B'])
    expect(update.spec.task.container.pull_options.registry_auth).to eq('synthetic-test-value')
    expect(update.spec.replicated.replicas).to eq(2)
  end

  it 'propagates gRPC status errors' do
    expect { client.control.get_service(api::GetServiceRequest.new(service_id: 'missing')) }.to raise_error(GRPC::NotFound)
    @control.requests.pop
  end

  it 'honors per-call deadlines' do
    expect do
      client.control.get_service(api::GetServiceRequest.new(service_id: 'slow'), deadline: Time.now + 0.05)
    end.to raise_error(GRPC::DeadlineExceeded)
    @control.requests.pop
  end

  it 'uses the configured default timeout' do
    described_class.open(**@options, timeout: 0.05) do |short|
      expect { short.control.get_service(api::GetServiceRequest.new(service_id: 'slow')) }.to raise_error(GRPC::DeadlineExceeded)
    end
    @control.requests.pop
  end

  it 'consumes server streams with readiness and typed events' do
    messages = client.watch.watch(api::WatchRequest.new(entries: [{kind: 'service', action: 7}])).to_a
    expect(messages.first.events).to be_empty
    expect(messages.last.version.index).to eq(43)
    expect(messages.last.events.first.action).to eq(:WATCH_ACTION_UPDATE)
    expect(messages.last.events.first.object.service.id).to eq('service-1')
  end

  it 'allows explicit stream cancellation through the native operation' do
    operation = client.watch.watch(api::WatchRequest.new(resume_from: {index: 999}), return_op: true)
    expect do
      operation.execute.each { |_message| operation.cancel }
    end.to raise_error(GRPC::Cancelled)
  ensure
    operation&.cancel
  end

  it 'sends a client stream' do
    requests = [api::PublishLogsMessage.new(subscription_id: 'spec', close: true)]
    expect(client.log_broker.publish_logs(requests.each)).to be_a(api::PublishLogsResponse)
    expect(@logs.requests.first.subscription_id).to eq('spec')
    expect(@logs.requests.first.close).to be(true)
  end

  it 'verifies the server certificate name' do
    described_class.open(**@options, server_name: 'wrong.example') do |wrong|
      expect { wrong.control.get_service(api::GetServiceRequest.new, deadline: Time.now + 1) }.to raise_error(GRPC::Unavailable)
    end
  end

  it 'verifies the certificate authority' do
    Dir.mktmpdir('swarmkit-wrong-ca') do |directory|
      path = File.join(directory, 'ca.pem')
      File.write(path, SpecServer.certificate(OpenSSL::PKey::RSA.new(2048), 'untrusted').to_pem)
      described_class.open(**@options, ca: path) do |wrong|
        expect { wrong.control.get_service(api::GetServiceRequest.new, deadline: Time.now + 1) }.to raise_error(GRPC::Unavailable)
      end
    end
  end

  it 'closes the channel when the block raises' do
    opened = nil
    expect do
      described_class.open(**@options) do |connection|
        opened = connection
        raise 'example failure'
      end
    end.to raise_error('example failure')
    expect { opened.control.get_service(api::GetServiceRequest.new) }.to raise_error(RuntimeError, /closed/)
  end

  it 'exposes all service stubs over the shared connection' do
    api::SERVICES.each do |name, service|
      expect(client.public_send(name)).to be_a(service::Stub)
    end
  end

  it 'rejects incomplete client credentials and invalid timeouts' do
    expect { described_class.new(cert: 'missing') }.to raise_error(ArgumentError, /together/)
    [0, -1, Float::INFINITY, Float::NAN, nil].each do |timeout|
      expect { described_class.new(timeout: timeout) }.to raise_error(ArgumentError, /timeout/)
    end
  end

  it 'supports mutual TLS over TCP' do
    Dir.mktmpdir('swarmkit-mtls') do |directory|
      SpecServer.start(directory, mutual: true) do |options|
        described_class.open(**options, cert: "#{directory}/cert.pem", key: "#{directory}/key.pem") do |remote|
          response = remote.control.get_service(api::GetServiceRequest.new(service_id: 'remote'))
          expect(response.service.id).to eq('remote')
        end
        described_class.open(**options) do |unauthenticated|
          expect do
            unauthenticated.control.get_service(api::GetServiceRequest.new, deadline: Time.now + 1)
          end.to raise_error(GRPC::Unavailable)
        end
      end
    end
  end
end
