# frozen_string_literal: true

require_relative 'version'
require_relative 'swarmkit-client/api'

module Swarmkit
  class Client
    SOCKET = '/var/run/docker/swarm/control.sock'
    CA = '/var/lib/docker/swarm/certificates/swarm-root-ca.crt'

    def self.open(**)
      client = new(**)
      yield client
    ensure
      client&.close
    end

    def initialize(target: "unix:#{SOCKET}", ca: CA, cert: nil, key: nil,
                   server_name: 'swarm-manager', timeout: 10, channel_args: {})
      raise ArgumentError, 'cert and key must be supplied together' if cert.nil? != key.nil?

      unless timeout.is_a?(Numeric) && timeout.finite? && timeout.positive?
        raise ArgumentError,
              'timeout must be finite and positive'
      end

      credentials = GRPC::Core::ChannelCredentials.new(
        File.read(ca), key && File.read(key), cert && File.read(cert)
      )
      args = {'grpc.max_receive_message_length' => 16 * 1024 * 1024}.merge(channel_args)
      if server_name
        args['grpc.ssl_target_name_override'] = server_name
        args['grpc.default_authority'] = server_name
      end
      @channel = GRPC::Core::Channel.new(target, args, credentials)
      @stubs = API::SERVICES.transform_values do |service|
        service::Stub.new(target, credentials, channel_override: @channel, timeout: timeout)
      end
    end

    # reason: all 11 services share one channel and the same accessor behavior.
    API::SERVICES.each_key do |name|
      define_method(name) { @stubs.fetch(name) }
    end

    def close
      @channel.close
    end
  end
end
