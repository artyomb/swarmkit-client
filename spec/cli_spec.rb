# frozen_string_literal: true

require 'stringio'
require 'open3'
require_relative '../lib/swarmkit-client/cli'

RSpec.describe Swarmkit::CLI do
  def run_cli(*arguments, input: '')
    output = StringIO.new
    error = StringIO.new
    status = described_class.new(input: StringIO.new(input), output: output, error: error).run(arguments)
    [status, output.string, error.string]
  end

  it 'lists all 65 RPCs without connecting and filters by service' do
    expect(Swarmkit::Client).not_to receive(:open)
    status, output, error = run_cli('methods')
    expect(status).to eq(0)
    expect(error).to be_empty
    expect(output.lines.size).to eq(65)
    expect(output).to include("control get_service\n", "watch watch\n", "log_broker publish_logs\n")
    expect(run_cli('methods', 'control')[1].lines.size).to eq(43)
  end

  it 'describes request, response and nested fields and enums offline' do
    expect(Swarmkit::Client).not_to receive(:open)
    status, output, = run_cli('describe', 'control', 'get_service')
    expect(status).to eq(0)
    schema = JSON.parse(output)
    expect(schema.dig('method', 'input_type')).to eq('.docker.swarmkit.v1.GetServiceRequest')
    expect(schema.dig('types', 'docker.swarmkit.v1.GetServiceRequest', 'field').map { |field| field['name'] }).to include('service_id')
    expect(schema.dig('types', 'docker.swarmkit.v1.Service', 'field').map { |field| field['name'] }).to include('spec', 'meta')
    expect(schema.dig('types', 'docker.swarmkit.v1.ContainerSpec.PullOptions', 'field').first).to include('name' => 'registry_auth', 'number' => 64)
  end

  it 'prints help and version from the executable' do
    %w[--help --version].each do |option|
      output, error, status = Open3.capture3(Gem.ruby, File.expand_path('../bin/swarmkit-client', __dir__), option)
      expect(status).to be_success
      expect(error).to be_empty
      expect(output).to include(option == '--help' ? 'Usage: swarmkit-client' : Swarmkit::VERSION)
    end
  end

  it 'rejects invalid commands and non-RPC methods before opening a connection' do
    expect(Swarmkit::Client).not_to receive(:open)
    [%w[unknown get_service], %w[control close], %w[control], %w[describe control], %w[methods control extra]].each do |args|
      status, output, error = run_cli(*args)
      expect(status).to eq(2)
      expect(output).to be_empty
      expect(error).to start_with('error:')
    end
  end

  it 'rejects bad JSON, unknown fields and malformed stream input without echoing request values' do
    expect(Swarmkit::Client).not_to receive(:open)
    ['{"service_id":"private-test-value"', '{"unknown":"private-test-value"}'].each do |json|
      status, output, error = run_cli('control', 'get_service', json)
      expect(status).to eq(2)
      expect(output).to be_empty
      expect(error).not_to include('private-test-value')
    end
    expect(run_cli('log_broker', 'publish_logs', '{}').first).to eq(2)
    expect(run_cli('log_broker', 'publish_logs', '[{}, {"unknown": true}]').first).to eq(2)
  end

  it 'reports missing input files as I/O errors' do
    status, output, error = run_cli('control', 'get_service', '@/missing/swarmkit-input.json')
    expect(status).to eq(1)
    expect(output).to be_empty
    expect(error).to include('I/O failed')
  end

  context 'with a TLS manager fixture' do
    around do |example|
      Dir.mktmpdir('swarmkit-cli') do |directory|
        @directory = directory
        SpecServer.start(directory) do |options, control, logs|
          @connection = ['--target', options[:target], '--ca', options[:ca]]
          @control = control
          @logs = logs
          example.run
        end
      end
    end

    it 'reads JSON from arguments, stdin and files and redacts credential-bearing fields' do
      json = '{"serviceId":"service-1"}'
      path = File.join(@directory, 'request.json')
      File.write(path, json)
      [json, '-', "@#{path}"].each do |source|
        status, output, error = run_cli(*@connection, 'control', 'get_service', source, input: json)
        expect(status).to eq(0)
        expect(error).to be_empty
        service = JSON.parse(output).fetch('service')
        expect(service.fetch('id')).to eq('service-1')
        expect(service.dig('spec', 'task', 'container', 'image')).to eq('example:v1')
        expect(service.dig('spec', 'task', 'container', 'pull_options', 'registry_auth')).to eq('[REDACTED]')
        expect(service.dig('spec', 'task', 'container', 'env')).to eq('[REDACTED]')
        expect(service.dig('spec', 'annotations', 'labels')).to eq('[REDACTED]')
        expect(output).not_to include('synthetic-test-value', 'A=B')
      end
    end

    it 'sends an explicit mutation with a complete JSON request' do
      json = JSON.generate(service_id: 'service-1', service_version: {index: '42'}, spec: {annotations: {name: 'example'}, replicated: {replicas: '2'}})
      status, output, error = run_cli(*@connection, 'control', 'update_service', json)
      expect([status, JSON.parse(output), error]).to eq([0, {}, ''])
      update = @control.requests.pop
      expect(update.service_version.index).to eq(42)
      expect(update.spec.replicated.replicas).to eq(2)
    end

    it 'redacts CA private keys, join tokens and unlock keys from cluster responses' do
      status, output, error = run_cli(*@connection, 'control', 'get_cluster', '{"cluster_id":"cluster-1"}')
      expect(status).to eq(0)
      expect(error).to be_empty
      cluster = JSON.parse(output).fetch('cluster')
      expect(cluster.fetch('id')).to eq('cluster-1')
      expect(cluster.dig('root_ca', 'ca_key')).to eq('[REDACTED]')
      expect(cluster.dig('root_ca', 'join_tokens')).to eq('[REDACTED]')
      expect(cluster.fetch('unlock_keys')).to eq('[REDACTED]')
      %w[synthetic-ca-key synthetic-worker-token synthetic-unlock-key].each do |secret|
        expect(output).not_to include(secret, [secret].pack('m0'))
      end
    end

    it 'prints one JSON object per server-streamed response' do
      status, output, error = run_cli(*@connection, 'watch', 'watch', '{"entries":[{"kind":"service","action":7}]}')
      expect(status).to eq(0)
      expect(error).to be_empty
      messages = output.lines.map { |line| JSON.parse(line) }
      expect(messages.size).to eq(2)
      expect(messages.last.dig('version', 'index')).to eq('43')
      expect(messages.last.fetch('events').first.dig('object', 'service', 'id')).to eq('service-1')
    end

    it 'sends client-streamed messages from a JSON array' do
      json = '[{"subscription_id":"one"},{"subscription_id":"two","close":true}]'
      status, output, error = run_cli(*@connection, 'log_broker', 'publish_logs', '-', input: json)
      expect([status, JSON.parse(output), error]).to eq([0, {}, ''])
      expect(@logs.requests.map(&:subscription_id)).to eq(%w[one two])
    end

    it 'returns failing exit codes for RPC errors and bounded streams' do
      status, output, error = run_cli(*@connection, 'control', 'get_service', '{"service_id":"missing"}')
      expect(status).to eq(1)
      expect(output).to be_empty
      expect(error).to include('gRPC status 5')
      status, output, error = run_cli(*@connection, '--timeout', '0.1', 'watch', 'watch', '{"resume_from":{"index":999}}')
      expect(status).to eq(1)
      expect(JSON.parse(output)).to eq({})
      expect(error).to include('gRPC status 4')
    end

    it 'cancels the RPC and closes the channel when interrupted or piped to a closed reader' do
      [Interrupt.new, Errno::EPIPE.new].zip([130, 0]).each do |exception, expected|
        output = StringIO.new
        allow(output).to receive(:puts).and_raise(exception)
        cli = described_class.new(output: output, error: StringIO.new)
        expect(cli.run([*@connection, 'watch', 'watch', '{"resume_from":{"index":999}}'])).to eq(expected)
      end
    end
  end
end
