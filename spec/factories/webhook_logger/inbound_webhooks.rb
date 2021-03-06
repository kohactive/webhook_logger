FactoryBot.define do
  factory :inbound_webhook, class: 'WebhookLogger::InboundWebhook' do
    association(:webhookable, factory: :invoice)

    trait :succeeded do
      succeeded_at { Time.now }
    end

    trait :failed do
      succeeded_at { nil }
      failed_at { Time.now }
    end
  end
end
