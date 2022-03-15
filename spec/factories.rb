FactoryBot.define do
  factory :user do
    email { 'test@test.rb' }
    name { 'test' }
    password { '123123' }
  end
end
