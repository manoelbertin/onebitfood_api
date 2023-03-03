FactoryBot.define do
  factory :order do
    sequence(:name) { |n| "Order #{n}" }
    description { Faker::Lorem.paragraph }
    price { Faker::Commerce.price(range: 100.0..400.0) }
  end
end