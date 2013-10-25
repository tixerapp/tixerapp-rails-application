# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    user nil
    topic nil
    name "MyString"
    content "MyText"
    status "MyString"
  end
end
