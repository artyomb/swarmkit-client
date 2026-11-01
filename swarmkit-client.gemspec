# frozen_string_literal: true

require_relative 'lib/version'

Gem::Specification.new do |spec|
  spec.name = 'swarmkit-client'
  spec.version = Swarmkit::VERSION
  spec.summary = 'Compact Ruby client for the complete SwarmKit gRPC API'
  spec.description = 'Typed requests, responses and streams for all SwarmKit services over verified TLS.'
  spec.authors = ['Artyom B']
  spec.homepage = 'https://github.com/artyomb/swarmkit-client'
  spec.license = 'Apache-2.0'
  spec.required_ruby_version = '>= 3.2'
  spec.files = Dir['lib/**/*', 'docs/**/*', 'README.md', 'LICENSE', 'NOTICE', 'schema/sources.json',
                   'bin/swarmkit-client']
  spec.bindir = 'bin'
  spec.executables = ['swarmkit-client']
  spec.require_paths = ['lib']
  spec.metadata = {'source_code_uri' => spec.homepage, 'rubygems_mfa_required' => 'true'}

  spec.add_dependency 'google-protobuf', '~> 4.36'
  spec.add_dependency 'grpc', '~> 1.85'
end
