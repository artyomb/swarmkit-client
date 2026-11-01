# frozen_string_literal: true

RSpec.describe Swarmkit::API do
  it 'provides the complete pinned method catalog' do
    expect(described_class::SERVICES.transform_values { |service| service.rpc_descs.size }).to eq(
      control: 43, dispatcher: 6, ca: 2, node_ca: 2, raft: 3, raft_membership: 2,
      logs: 1, log_broker: 2, watch: 1, health: 1, resource_allocator: 2
    )
    described_class::SERVICES.each_value do |service|
      service.rpc_descs.each_value do |rpc|
        expect(service::Stub.instance_methods).to include(GRPC::GenericService.underscore(rpc.name.to_s).to_sym)
      end
    end
  end

  it 'preserves nested messages, maps, enum values and oneof semantics' do
    spec = described_class::ServiceSpec.new(annotations: {labels: {'owner' => 'spec'}}, replicated: {replicas: 3})
    expect(spec.mode).to eq(:replicated)
    spec.global = described_class::GlobalService.new
    expect(spec.mode).to eq(:global)
    expect(spec.replicated).to be_nil
    expect(described_class::TaskState::RUNNING).to eq(512)
    expect(described_class::HealthCheckResponse::ServingStatus::SERVING).to eq(1)
    expect(described_class::ListTasksRequest.new(filters: {service_ids: ['one']}).filters.service_ids).to eq(['one'])
  end

  it 'preserves unknown wire fields when decoding and encoding full messages' do
    data = described_class::GetServiceRequest.encode(described_class::GetServiceRequest.new(service_id: 'id'))
    data += "\xA0\x06\x01".b # Unknown field 100, varint 1.
    expect(described_class::GetServiceRequest.encode(described_class::GetServiceRequest.decode(data))).to eq(data)
  end

  it 'keeps descriptors isolated from other SwarmKit bindings' do
    expect(described_class::POOL).not_to equal(Google::Protobuf::DescriptorPool.generated_pool)
    expect(described_class::GetServiceRequest.descriptor.name).to eq('docker.swarmkit.v1.GetServiceRequest')
  end

  it 'retains registry auth at its upstream field number and exposes all output fields' do
    expect(described_class::ContainerSpec.descriptor.lookup('pull_options').number).to eq(10)
    expect(described_class::ContainerSpec::PullOptions.descriptor.lookup('registry_auth').number).to eq(64)
    expect(described_class::Service.descriptor.map(&:name)).to include('spec', 'meta', 'previous_spec', 'update_status')
  end
end
