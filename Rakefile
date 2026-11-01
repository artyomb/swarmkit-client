# frozen_string_literal: true

require 'rspec/core/rake_task'
require 'rubocop/rake_task'
require_relative 'lib/version'

RSpec::Core::RakeTask.new(:spec)
RSpec::Core::RakeTask.new(:rspec) do |task|
  task.rspec_opts = '--format documentation --format RspecJunitFormatter --out results/rspec.xml'
end
RuboCop::RakeTask.new
task default: %i[rubocop rspec]

desc 'Generate the complete API field reference'
task :docs do
  ruby 'bin/api-reference'
end

desc 'Rebuild the pinned protobuf descriptor'
task :schema do
  ruby 'bin/update-schema'
end

desc 'Build the gem after checks'
task build: :default do
  mkdir_p 'pkg'
  sh 'gem', 'build', 'swarmkit-client.gemspec', '--output', "pkg/swarmkit-client-#{Swarmkit::VERSION}.gem"
end

desc 'Build and publish to RubyGems'
task push: :build do
  sh 'gem', 'push', "pkg/swarmkit-client-#{Swarmkit::VERSION}.gem"
end
