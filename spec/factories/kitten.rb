FactoryBot.define do
  factory :kitten, class: KittensStore::Models::Kitten do
    name { FFaker::Animal.name }
    price { 100 + rand(500) }
  end
end