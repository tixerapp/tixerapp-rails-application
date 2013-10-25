# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :activity do
    user nil
    name "MyString"
    website "MyString"
    content "MyString"
    avatar ""
    address "MyText"
    started_at "2013-10-26 17:21:22"
    finished_at "2013-10-26 17:21:22"
    privacy "MyString"
  end
end
