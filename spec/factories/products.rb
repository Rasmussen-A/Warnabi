# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    name I18n.t(:ring)
    description "<h2>Ring!</h2>"
    metatags "Slavic ring from 5th century"
    association :category
    association :manufacturer
  end
end
