# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    document nil
    user nil
    content "MyText"
  end
end
