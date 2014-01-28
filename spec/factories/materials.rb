# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :material do
    name I18n.t(:silver)
    description "Silver - 9000"
  end
end
