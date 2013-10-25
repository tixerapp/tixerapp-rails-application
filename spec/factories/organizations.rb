# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :organization do
    name "MyString"
    kind "MyString"
    website "MyString"
    content "MyString"
    address "MyText"
    avatar ""
    lat 1.5
    lng 1.5
  end
end
