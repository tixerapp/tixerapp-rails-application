# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :chat do
    sender nil
    recipient nil
    content "MyText"
    read false
  end
end
