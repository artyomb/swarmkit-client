# frozen_string_literal: true

require 'grpc'
require 'google/protobuf/descriptor_pb'

module Swarmkit
  module API
    REVISION = '17b8d222e7dd'
    PACKAGE = 'docker.swarmkit.v1'
    POOL = Google::Protobuf::DescriptorPool.new
    SCHEMA = Google::Protobuf::FileDescriptorSet.decode(File.binread(File.join(__dir__, 'schema.pb')))

    SCHEMA.file.each { |file| POOL.add_serialized_file(file.to_proto) }

    # reason: the pinned descriptors define every type and RPC without duplicated Ruby bindings.
    def self.define_types(parent, prefix, messages, enums)
      enums.each do |type|
        parent.const_set(type.name, POOL.lookup("#{prefix}.#{type.name}").enummodule)
      end
      messages.each do |type|
        next if type.options&.map_entry

        name = "#{prefix}.#{type.name}"
        klass = parent.const_set(type.name, POOL.lookup(name).msgclass)
        define_types(klass, name, type.nested_type, type.enum_type)
      end
    end
    private_class_method :define_types

    SCHEMA.file.select { |file| file.package == PACKAGE }.each do |file|
      define_types(self, PACKAGE, file.message_type, file.enum_type)
    end

    SERVICES = SCHEMA.file.flat_map(&:service).to_h do |definition|
      service = const_set(definition.name, Class.new { include GRPC::GenericService })
      service.service_name = "#{PACKAGE}.#{definition.name}"
      service.marshal_class_method = :encode
      service.unmarshal_class_method = :decode
      POOL.lookup(service.service_name).each do |method|
        input = method.input_type.msgclass
        output = method.output_type.msgclass
        input = service.stream(input) if method.client_streaming
        output = service.stream(output) if method.server_streaming
        service.rpc(method.name.to_sym, input, output)
      end
      service.const_set(:Stub, service.rpc_stub_class)
      [GRPC::GenericService.underscore(definition.name).to_sym, service]
    end.freeze
    private_constant :SCHEMA
  end
end
