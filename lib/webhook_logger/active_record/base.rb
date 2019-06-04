module WebhookLogger
  module Base
    extend ActiveSupport::Concern

    module ClassMethods
      def has_webhooks
        has_many :webhooks, as: :webhookable, dependent: :delete_all
      end
    end
  end
end

ActiveRecord::Base.send :include, WebhookLogger::Base
