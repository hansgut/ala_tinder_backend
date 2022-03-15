FactoryBot.define do
  factory :profile do
    user { nil }
    birthday { "2022-03-15" }
    bio { "MyText" }
    name { "MyString" }
  end

  factory :user do
    email { 'test@test.rb' }
    password { '123123' }
  end
end
