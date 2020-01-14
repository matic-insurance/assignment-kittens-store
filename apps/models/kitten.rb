module KittensStore
  module Models
    class Kitten < ActiveRecord::Base
      validates :name, presence: true
      validates :price, presence: true
    end
  end
end