# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :publication do
    user nil
    organization nil
    title "MyText"
    content "MyText"
    published_at "2013-10-26"
  end
end
