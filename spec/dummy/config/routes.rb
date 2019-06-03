Rails.application.routes.draw do
  mount WebhookLogger::Engine => "/webhook_logger"
end
