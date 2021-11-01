require 'spec_helper'
require_relative '../../apps/routes/kittens'

RSpec.describe KittensStore::Routes::Kittens do
  def app
    described_class
  end

  describe '/kittens/info' do
    def app_response
      get '/kittens/info'
      last_response.body
    end

    context 'with kittens' do
      it 'shows correct count' do
        expect(app_response).to include('3 kittens')
      end
    end
  end
end