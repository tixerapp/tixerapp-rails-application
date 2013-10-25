# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :recommendation do
    user nil
    recommender nil
    content "MyText"
    accepted false
  end
end
