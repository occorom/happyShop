FactoryBot.define do
  factory :product do
    name { Faker::Commerce.product_name }
    description { Faker::Lorem.word }
    price { Faker::Commerce.price }
    category_id nil
  end
end