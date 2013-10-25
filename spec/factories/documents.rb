# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :document do
    user nil
    topic nil
    level nil
    name "MyString"
    kind "MyString"
    content "MyText"
  end
end
