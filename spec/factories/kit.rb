FactoryBot.define do
  factory :kit do
    name { Faker::StarTrek.unique.character }
  end
end
