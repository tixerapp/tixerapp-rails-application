# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :revision do
    user nil
    document nil
    content ""
    mimetype "MyString"
  end
end
