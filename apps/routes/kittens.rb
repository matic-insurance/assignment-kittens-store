require_relative '../models/kitten'

module KittensStore
  module Routes
    class Kittens < Sinatra::Application
      get '/kittens/info' do
        "We have #{KittensStore::Models::Kitten.count} kittens in the store"
      end
    end
  end
end
