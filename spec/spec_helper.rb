ENV['RACK_ENV'] = 'test'

require_relative '../config/environment'

require_relative 'support/configurations/database_cleaner'
require_relative 'support/configurations/factory_bot'

RSpec.configure do |config|
  config.include Rack::Test::Methods

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.disable_monkey_patching!
end
