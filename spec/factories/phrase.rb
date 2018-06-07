FactoryBot.define do
  factory :phrase do
    name { Faker::Book.unique.title }
  end
end
