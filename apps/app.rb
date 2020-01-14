require_relative 'routes/landing'
require_relative 'routes/kittens'

module KittensStore
  class App < Sinatra::Application
    register Sinatra::ActiveRecordExtension

    configure do
      disable :method_override
      disable :static
    end

    use KittensStore::Routes::Landing
    use KittensStore::Routes::Kittens
  end
end