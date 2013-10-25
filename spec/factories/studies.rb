# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :study do
    user nil
    organization nil
    degree "MyString"
    content "MyText"
    started_at "2013-10-26"
    finished_at "2013-10-26"
    is_current false
  end
end
