FactoryBot.define do
  factory :invoice do
    stripe_invoice_id { "inv_#{SecureRandom.hex(6)}" }
    amount            { (Faker::Commerce.price * 100).to_i }
    description       { "Invoice paid!" }

    trait :paid do
      paid_at { Faker::Time.between(5.days.ago, DateTime.now) }
    end
  end
end
