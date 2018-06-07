FactoryBot.define do
  factory :bag do
    kit
    grouping
    color { Faker::Color.unique.color_name }
  end
end
