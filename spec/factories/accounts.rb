FactoryBot.define do
  factory :account do
    user
    name { Faker::Bank.name }
    balance_in_cents { 10_000 }
  end
end
