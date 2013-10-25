# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bookmark do
    user nil
    document nil
    note "MyText"
  end
end
