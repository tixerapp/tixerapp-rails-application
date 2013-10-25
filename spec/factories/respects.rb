# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :respect do
    user nil
    colleague nil
    blocked false
  end
end
