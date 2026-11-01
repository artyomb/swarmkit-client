# frozen_string_literal: true

require 'openssl'
require 'tmpdir'

module SpecServer
  API = Swarmkit::API

  class Control < API::Control
    attr_reader :requests

    def initialize
      super
      @requests = Queue.new
    end

    def get_service(request, call)
      @requests << [request, call.metadata]
      raise GRPC::NotFound, 'Service not found' if request.service_id == 'missing'

      sleep 0.2 if request.service_id == 'slow'
      API::GetServiceResponse.new(service: {
                                    id: request.service_id, meta: {version: {index: 42}},
                                    spec: {annotations: {name: 'example', labels: {'owner' => 'spec'}},
                                           task: {container: {image: 'example:v1', env: ['A=B'],
                                                              pull_options: {registry_auth: 'synthetic-test-value'}}}, replicated: {replicas: 2}}
                                  })
    end

    def update_service(request, _call)
      @requests << request
      API::UpdateServiceResponse.new
    end

    def get_cluster(request, _call)
      API::GetClusterResponse.new(cluster: {
                                    id: request.cluster_id,
                                    root_ca: {ca_key: 'synthetic-ca-key', join_tokens: {worker: 'synthetic-worker-token'}},
                                    unlock_keys: [{key: 'synthetic-unlock-key'}]
                                  })
    end
  end

  class Watch < API::Watch
    def watch(request, call)
      Enumerator.new do |stream|
        stream << API::WatchMessage.new
        if request.resume_from&.index == 999
          100.times do
            break if call.cancelled?

            sleep 0.01
          end
        else
          stream << API::WatchMessage.new(version: {index: 43}, events: [{
                                            action: :WATCH_ACTION_UPDATE, object: {service: {id: 'service-1'}}
                                          }])
        end
      end
    end
  end

  class LogBroker < API::LogBroker
    attr_reader :requests

    def publish_logs(call)
      @requests = call.each_remote_read.to_a
      API::PublishLogsResponse.new
    end
  end

  def self.certificate(key, name, ca: nil, issuer_key: key)
    cert = OpenSSL::X509::Certificate.new
    cert.version = 2
    cert.serial = OpenSSL::BN.rand(64).to_i
    cert.subject = OpenSSL::X509::Name.parse("/CN=#{name}")
    cert.issuer = ca ? ca.subject : cert.subject
    cert.public_key = key.public_key
    cert.not_before = Time.now - 60
    cert.not_after = Time.now + 3600
    extensions = OpenSSL::X509::ExtensionFactory.new
    extensions.subject_certificate = cert
    extensions.issuer_certificate = ca || cert
    cert.add_extension(extensions.create_extension('basicConstraints', ca ? 'CA:FALSE' : 'CA:TRUE', true))
    cert.add_extension(extensions.create_extension('subjectAltName', "DNS:#{name}"))
    cert.sign(issuer_key, OpenSSL::Digest.new('SHA256'))
  end

  def self.start(directory, mutual: false)
    key = OpenSSL::PKey::RSA.new(2048)
    ca = certificate(key, 'spec-ca')
    cert = certificate(key, 'swarm-manager', ca: ca)
    {'ca.pem' => ca.to_pem, 'cert.pem' => cert.to_pem, 'key.pem' => key.to_pem}.each do |name, data|
      File.write(File.join(directory, name), data, mode: 'w', perm: 0o600)
    end
    credentials = GRPC::Core::ServerCredentials.new(ca.to_pem, [{private_key: key.to_pem, cert_chain: cert.to_pem}], mutual)
    server = GRPC::RpcServer.new(poll_period: 0.1)
    target = mutual ? "127.0.0.1:#{server.add_http2_port('127.0.0.1:0', credentials)}" : "unix:#{directory}/control.sock"
    server.add_http2_port(target, credentials) unless mutual
    control = Control.new
    logs = LogBroker.new
    [control, Watch.new, logs].each { |service| server.handle(service) }
    thread = Thread.new { server.run }
    raise 'Spec server did not start' unless server.wait_till_running(5)

    yield({target: target, ca: File.join(directory, 'ca.pem')}, control, logs)
  ensure
    server&.stop
    thread&.join(5)
    raise 'Spec server did not stop' if thread&.alive?
  end
end
