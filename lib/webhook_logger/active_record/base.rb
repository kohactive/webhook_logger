module WebhookLogger
  module Base
    extend ActiveSupport::Concern

    module ClassMethods
      def has_webhooks
        has_many :inbound_webhooks, as: :webhookable, dependent: :delete_all, class_name: "WebhookLogger::InboundWebhook"
      end
    end
  end
end

ActiveRecord::Base.send :include, WebhookLogger::Base
