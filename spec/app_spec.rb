require 'spec_helper'
require_relative '../apps/app'

RSpec.describe KittensStore::App do
  def app
    described_class
  end

  it 'should mount landing' do
    get '/'

    expect(last_response).to be_ok
  end

  it 'should mount kittens' do
    get '/kittens/info'

    expect(last_response).to be_ok
  end
end