# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    price 2300.5
    available 3
    weight 120
    association :product
    association :material
  end
end
