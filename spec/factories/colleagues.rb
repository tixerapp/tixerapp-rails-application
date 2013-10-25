# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :colleague do
    follower nil
    following nil
    accepted false
    follower_blocked false
    following_blocked false
  end
end
