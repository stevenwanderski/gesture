# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pose do
    image "MyString"
    gender "MyString"
    nude false
  end
end
