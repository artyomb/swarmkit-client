# swarmkit-client

A compact Ruby client for SwarmKit's internal gRPC API: **65 RPCs, 11 services**,
full protobuf types, TLS, deadlines and streaming. This connects directly to
SwarmKit; it is separate from Docker Engine's HTTP API.

## Install

Ruby 3.2 or newer. From this checkout:

```sh
bundle install
bundle exec rake build
gem install pkg/swarmkit-client-0.1.0.gem
```

Or use `gem 'swarmkit-client', path: '../swarmkit-client'` in another project's Gemfile.

## CLI

Installing the gem adds `swarmkit-client`. In this checkout, use
`bundle exec ruby bin/swarmkit-client` before installation.

```sh
swarmkit-client --help
swarmkit-client methods                         # All 65 RPCs; offline
swarmkit-client methods control                 # RPCs for one service
swarmkit-client describe control get_service    # Request/response fields, nested types and enums; offline

swarmkit-client health check '{"service":"ControlAPI"}'
swarmkit-client control list_services '{"filters":{"names":["grib_grib_loader"]}}'
swarmkit-client control get_service '{"service_id":"service-id"}'
swarmkit-client --timeout 30 watch watch '{"entries":[{"kind":"service","action":7}]}'
```

Syntax: `swarmkit-client [options] SERVICE METHOD [JSON|@FILE|-]`. Service and
method names match the Ruby client. Omitted JSON means `{}`; use `@request.json`
to read a file or `-` to read stdin. Client-streaming RPCs accept a JSON array.
Input follows protobuf JSON, accepting snake_case or lowerCamelCase field names;
unknown fields are rejected before connecting.

Connection flags are `--target`, `--ca`, `--cert`, `--key`, `--server-name` and
`--timeout`; defaults match the [Ruby client](#connection-options). For a forwarded socket:

```sh
swarmkit-client --target unix:/tmp/swarmkit.sock --ca ./swarm-root-ca.crt \
  control get_service @request.json
```

Each response is one JSON line on stdout, flushed immediately for streams.
Output uses protobuf JSON with snake_case names, string-encoded 64-bit integers
and omitted default scalar fields. Errors go to stderr without echoing request
values or server error details. Exit codes: `0` success (including a closed output
pipe), `1` RPC/I/O failure, `2` invalid input, `130` interruption. Reaching a stream
deadline returns `1`, with gRPC status `4`; already received lines remain valid.
Streams are cancelled and the channel closed on completion, error or Ctrl-C.

The CLI emits diagnostic JSON with credential-bearing fields redacted, including
registry auth, passwords, tokens, private/unlock keys, opaque data, environment,
command arguments, labels and options. These become `"[REDACTED]"`. Use the Ruby
API for complete objects; CLI output is unsuitable for read/modify/write updates.
Explicit mutation commands run directly, for example
`swarmkit-client control update_service @update.json`; the request must include
the complete spec and current version as shown [below](#update-a-service).

## Read services

Run on a Swarm manager with permission to access its control socket and root CA:

```ruby
require 'swarmkit-client'

api = Swarmkit::API
Swarmkit::Client.open do |client|
  request = api::ListServicesRequest.new(filters: {names: ['grib_grib_loader']})
  client.control.list_services(request).services.each do |service|
    puts "#{service.id}: #{service.spec.task.container&.image}"
  end
  status = client.health.check(api::HealthCheckRequest.new(service: 'ControlAPI'))
  puts status.status # :SERVING
end
```

`Client.open` closes the shared channel even if the block raises. For a persistent
connection, use `Client.new` and call `close` when finished. All service stubs
share that connection; close it only after its callers and streams finish.

Internal responses can contain stored registry credentials, configuration data
and tokens. Select the fields you need; avoid logging complete protobuf objects.

## Connection options

| Keyword | Default | Meaning |
|---|---|---|
| `target` | `unix:/var/run/docker/swarm/control.sock` | Native gRPC target, including TCP `host:port` |
| `ca` | `/var/lib/docker/swarm/certificates/swarm-root-ca.crt` | Path to trusted CA PEM |
| `cert`, `key` | `nil` | Paths to client certificate and private key PEM; provide both for mutual TLS |
| `server_name` | `swarm-manager` | Expected certificate SAN and authority; `nil` uses the target hostname |
| `timeout` | `10` | Positive finite default deadline duration in seconds, including streams |
| `channel_args` | `{}` | Native gRPC channel settings; default receive limit is 16 MiB |

The inspected Docker 29.2.0 manager uses **TLS even on its Unix socket**.
`server_name` selects the identity to verify against the trusted CA; verification
stays enabled. Through an SSH Unix-socket forward, supply the forwarded socket
as `target` and a local copy of the public root CA as `ca`.

Remote TCP example, with paths to authorized Swarm certificates:

```ruby
client = Swarmkit::Client.new(
  target: 'manager.example:2377', ca: '/secure/swarm-root-ca.crt',
  cert: '/secure/swarm-node.crt', key: '/secure/swarm-node.key'
)
begin
  # Use client.control, client.watch, etc.
ensure
  client.close
end
```

The remote manager enforces certificate roles, organization and revocation.
Socket access uses a different authorization path. `raft` and `raft_membership`
are registered only on the network server in the inspected build. Having a
client method does not make that RPC available or authorized on every endpoint.

## API and types

The [complete reference](docs/api.md) lists **every method, request parameter,
response property, nested type, field number, default, oneof and enum value**.

| Client accessor | RPCs | Purpose |
|---|---:|---|
| `control` | 43 | Nodes, tasks, services, networks, clusters, secrets, configs, volumes and custom objects |
| `dispatcher` | 6 | Worker sessions, assignments and status updates |
| `ca` | 2 | Cluster certificates and root CA |
| `node_ca` | 2 | Node certificate issuance and status |
| `raft` | 3 | Raft transport and member address lookup |
| `raft_membership` | 2 | Raft membership changes |
| `logs` | 1 | Log subscriptions |
| `log_broker` | 2 | Log subscription delivery and publishing |
| `watch` | 1 | Store event subscriptions |
| `health` | 1 | Named service health |
| `resource_allocator` | 2 | Network attachment allocation |

Stubs follow native [Ruby gRPC](https://grpc.io/docs/languages/ruby/basics/):
snake_case RPC names, typed request objects and typed responses. Construct
nested messages from hashes, use symbols for named enums and integers for enum
bitmasks such as Watch action `7`. Protobuf field names are preserved; Go's custom
names from `gogoproto` options do not rename the Ruby API.

```ruby
request = Swarmkit::API::GetServiceRequest.new(service_id: 'service-id')
response = client.control.get_service(request, deadline: Time.now + 5)
service = response.service

# Inspect field definitions without reading or dumping object values.
Swarmkit::API::GetServiceRequest.descriptor.each do |field|
  puts "#{field.name}: #{field.type}"
end
```

All SwarmKit types are under `Swarmkit::API`, including nested constants such as
`ContainerSpec::PullOptions`. Imported protobuf/raft types can be obtained from
`Swarmkit::API::POOL.lookup('raftpb.Message').msgclass`; nested hashes normally
make this unnecessary. The private descriptor pool prevents collisions with
other gems that load SwarmKit definitions.

Native gRPC options (`deadline`, `metadata`, `return_op`, `parent`, `credentials`)
pass through unchanged. Failures raise native `GRPC::BadStatus` subclasses such
as `GRPC::NotFound`, `GRPC::PermissionDenied` and `GRPC::DeadlineExceeded`.
The client adds no application-level retries. A mutation may have committed
before a deadline error; read the current state before deciding to retry.

## Update a service

This writes to the manager when called. Read the complete current spec and use
its **`meta.version`** for optimistic concurrency:

```ruby
Swarmkit::Client.open do |client|
  api = Swarmkit::API
  service = client.control.get_service(api::GetServiceRequest.new(service_id: 'service-id')).service
  service.spec.task.container.image = 'registry.example/app:v2'
  client.control.update_service(api::UpdateServiceRequest.new(
    service_id: service.id, service_version: service.meta.version, spec: service.spec
  ))
end
```

The bundled descriptor contains the full upstream schema, including registry
auth, maps and oneofs. It is not the reduced read projection used by the earlier
incident diagnostic script. Do not build updates from that reduced projection.

## Watch and cancel

```ruby
Swarmkit::Client.open do |client|
  request = Swarmkit::API::WatchRequest.new(entries: [{kind: 'service', action: 7}])
  operation = client.watch.watch(request, deadline: Time.now + 30, return_op: true)
  begin
    operation.execute.each do |message|
      next if message.events.empty? # Initial readiness response.

      puts "Store version: #{message.version.index}"
      message.events.each { |event| puts event.action }
    end
  rescue GRPC::DeadlineExceeded
    # The requested observation period ended.
  ensure
    operation.cancel
  end
end
```

Save event `version` to resume with `resume_from: {index: version}`. Compacted
history requires a fresh snapshot. `include_old_object` applies to live updates,
not replay. Always cancel an operation when stopping consumption early.
Client-streaming RPCs such as `log_broker.publish_logs` accept an Enumerable of
typed request messages. Their use belongs to the corresponding SwarmKit protocol.

## Development and release

The layout, RSpec approach, JUnit reports, Rake tasks and publish-on-main workflow
follow [artyomb/dry-stack](https://github.com/artyomb/dry-stack). The client and CLI
share descriptor-based bindings without hand-written wrappers for individual
RPCs. The CLI uses the standard library's OptionParser and JSON.

```sh
bundle exec rake          # RuboCop + RSpec; results/rspec.xml
bundle exec rake spec     # Local TLS fixtures; no production access
bundle exec rake build    # Checks, then pkg/swarmkit-client-VERSION.gem
bundle exec rake schema   # Fetch checksum-pinned sources and compile
bundle exec rake docs     # Regenerate the complete field reference
```

Specs cover TLS Unix sockets, mutual TLS TCP, certificate verification, complete
read/update messages, status errors, deadlines, both stream directions and
cancellation. Update tests use an in-process fixture, not a production manager.
CLI specs also cover discovery, schema output, input sources, redaction,
streaming, exit codes and executable startup.

GitHub Actions checks Ruby 3.2 and 3.4 on pull requests and pushes to `main`.
After successful checks, a push to `main` runs `rake push`, using repository secret
`RUBYGEMS_API_KEY` through `GEM_HOST_API_KEY`. Configure that secret and ensure the
gem name is available before enabling publication. Bump `lib/version.rb` for
each published version; RubyGems rejects an existing version. `rake push` also
publishes locally when explicitly invoked.

Schema: [moby/swarmkit `17b8d222e7dd`](https://github.com/moby/swarmkit/tree/17b8d222e7dd),
the revision pinned by the inspected Docker 29.2.0 build. This is an internal,
version-sensitive API. `schema/sources.json` pins source URLs and SHA-256 values;
`grpc-tools` 1.85.0 supplies protoc 35.1. Source comments are stripped from the
runtime descriptor. To change revisions, update the manifest URLs/checksums,
rebuild schema and docs, then run the specs against the intended Docker version.
No compiler or network access is needed to load the installed gem.

Apache-2.0; bundled schema attributions and dependency licenses are in [NOTICE](NOTICE).
