module WebhookLogger
  class InboundWebhook < ApplicationRecord
    has_one_attached :payload
    belongs_to :webhookable, polymorphic: true

    def successful?
      succeeded_at?
    end

    def failed?
      failed_at? && !successful?
    end
  end
end
