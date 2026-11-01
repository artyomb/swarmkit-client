# frozen_string_literal: true

require_relative '../lib/swarmkit-client'
require_relative 'support/server'

RSpec.configure do |config|
  config.order = :random
  config.disable_monkey_patching!
  config.mock_with(:rspec) { |mocks| mocks.verify_partial_doubles = true }
end
