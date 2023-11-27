FactoryBot.define do
  factory :user do
    nickname {Faker::Name.last_name}
    email {Faker::Internet.email}
    password {'abcd1234'}
    password_confirmation {password}
  end
end