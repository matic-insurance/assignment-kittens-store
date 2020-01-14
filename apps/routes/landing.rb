module KittensStore
  module Routes
    class Landing < Sinatra::Application
      get '/' do
        'Welcome! This is the best Kittens Store in the world!'
      end
    end
  end
end
