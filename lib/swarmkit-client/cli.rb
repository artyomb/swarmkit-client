# frozen_string_literal: true

require 'json'
require 'optparse'
require_relative '../swarmkit-client'

module Swarmkit
  class CLI
    class UsageError < StandardError; end

    SENSITIVE = /auth|password|credential|token|(?:^|_)keys?$|
                 \A(?:data|payload|env|command|args|labels|options|headers|test|value|message|err)\z/ix

    def initialize(input: $stdin, output: $stdout, error: $stderr)
      @input = input
      @output = output
      @error = error
    end

    def run(argv)
      options = {}
      parser = OptionParser.new do |opts|
        opts.banner = <<~HELP
          Usage: swarmkit-client [options] SERVICE METHOD [JSON|@FILE|-]
                 swarmkit-client methods [SERVICE]
                 swarmkit-client describe SERVICE METHOD
          JSON defaults to {}. Client streams take a JSON array; responses use JSON lines.
          Sensitive fields are redacted. Explicit RPC calls can change cluster state.
        HELP
        %i[target ca cert key server_name].each do |name|
          opts.on("--#{name.to_s.tr('_', '-')} VALUE") { |value| options[name] = value }
        end
        opts.on('--timeout SECONDS', Float, 'Deadline duration (default: 10)') { |value| options[:timeout] = value }
        opts.on('-v', '--version') do
          @output.puts VERSION
          return 0
        end
        opts.on('-h', '--help') do
          @output.puts opts
          return 0
        end
      end
      args = parser.parse(argv)
      case args.first
      when nil then @output.puts parser
      when 'methods' then list_methods(args.drop(1))
      when 'describe'
        raise UsageError, 'describe requires SERVICE METHOD' unless args.size == 3

        _, _, method = resolve(*args.drop(1))
        describe(method)
      else
        raise UsageError, 'expected SERVICE METHOD [JSON|@FILE|-]' unless (2..3).cover?(args.size)

        service, name, method = resolve(*args.first(2))
        request = request(method, args[2] || '{}')
        call(service, name, method, request, options)
      end
      0
    rescue UsageError, OptionParser::ParseError => e
      @error.puts "error: #{e.message}"
      2
    rescue JSON::ParserError, Google::Protobuf::ParseError, ArgumentError, TypeError
      @error.puts 'error: invalid JSON request or connection options; use --help and describe SERVICE METHOD'
      2
    rescue GRPC::BadStatus => e
      @error.puts "error: RPC failed (gRPC status #{e.code})"
      1
    rescue Errno::EPIPE
      0
    rescue SystemCallError, IOError => e
      @error.puts "error: I/O failed (#{e.class})"
      1
    rescue Interrupt
      130
    end

    private

    def list_methods(args)
      raise UsageError, 'methods accepts at most one SERVICE' if args.size > 1

      services = args.empty? ? API::SERVICES : {args.first.to_sym => service(args.first)}
      services.each do |name, definition|
        definition.rpc_descs.each_key { |rpc| @output.puts "#{name} #{GRPC::GenericService.underscore(rpc.to_s)}" }
      end
    end

    def service(name)
      API::SERVICES.fetch(name.to_sym) { raise UsageError, "unknown service; use 'methods'" }
    end

    def resolve(service_name, method_name)
      method = API::POOL.lookup(service(service_name).service_name).find do |rpc|
        GRPC::GenericService.underscore(rpc.name) == method_name
      end
      raise UsageError, "unknown RPC; use 'methods SERVICE'" unless method

      [service_name, method_name, method]
    end

    def describe(method)
      types = {}
      queue = [method.input_type, method.output_type]
      until queue.empty?
        type = queue.shift
        next if types.key?(type.name)

        types[type.name] = type.to_proto.to_h
        queue.concat(type.filter_map(&:subtype)) if type.is_a?(Google::Protobuf::Descriptor)
      end
      @output.puts JSON.pretty_generate(method: method.to_proto.to_h, types: types)
    end

    def request(method, source)
      json = if source == '-'
               @input.read
             elsif source.start_with?('@')
               File.read(source.delete_prefix('@'))
             else
               source
             end
      type = method.input_type.msgclass
      return type.decode_json(json) unless method.client_streaming

      items = JSON.parse(json)
      raise UsageError, 'client-streaming RPCs require a JSON array' unless items.is_a?(Array)

      items.map { |item| type.decode_json(JSON.generate(item)) }.each
    end

    def call(service, name, method, request, options)
      Client.open(**options) do |client|
        operation = client.public_send(service).public_send(name, request, return_op: true)
        begin
          response = operation.execute
          method.server_streaming ? response.each { |message| emit(message) } : emit(response)
        ensure
          operation.cancel
        end
      end
    end

    def emit(message)
      data = JSON.parse(message.class.encode_json(message, preserve_proto_fieldnames: true))
      @output.puts JSON.generate(redact(data))
      @output.flush
    end

    def redact(value)
      case value
      when Hash
        value.to_h { |key, item| [key, key.match?(SENSITIVE) ? '[REDACTED]' : redact(item)] }
      when Array then value.map { |item| redact(item) }
      else value
      end
    end
  end
end
