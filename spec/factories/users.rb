FactoryBot.define do
  factory :user do
    email { "john@example.com" }
    password { "123456" }
    username { Faker::Internet.username }
  end
end
