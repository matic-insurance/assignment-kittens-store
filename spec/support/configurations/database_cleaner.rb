require 'database_cleaner'

RSpec.configure do |config|
  config.around(:each) do |example|
    DatabaseCleaner.allow_remote_database_url = true
    DatabaseCleaner.cleaning do
      example.run
    end
  end
end