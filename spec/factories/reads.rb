FactoryBot.define do
  factory :read do
    title { Faker::Book.title }
    content { Faker::Lorem.paragraph }
    association :user
  end
end
