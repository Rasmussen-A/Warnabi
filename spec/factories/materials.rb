# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :material do
    type I18n.t(:silver)
    price 2300.5
    available 3
    by_request false
    weight 120
  end
end
