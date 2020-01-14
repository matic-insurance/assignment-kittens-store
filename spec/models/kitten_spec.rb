require 'spec_helper'
require_relative '../../apps/models/kitten'

RSpec.describe KittensStore::Models::Kitten do
  let(:kitten) { build(:kitten) }

  describe 'validations' do
    it 'are valid for factory object' do
      expect(kitten).to be_valid
    end

    it 'validates name' do
      kitten.name = nil
      expect(kitten).to_not be_valid
    end

    it 'validates price' do
      kitten.price = nil
      expect(kitten).to_not be_valid
    end
  end
end