# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :timeline do
    user nil
    route "MyString"
    content "MyText"
    hidden false
  end
end
