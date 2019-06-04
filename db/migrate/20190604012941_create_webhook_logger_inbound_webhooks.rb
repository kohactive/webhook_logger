class CreateWebhookLoggerInboundWebhooks < ActiveRecord::Migration[5.2]
  def change
    create_table :webhook_logger_inbound_webhooks do |t|
      t.references :webhookable, polymorphic: true, index: { name: :webhookable_ref_index }
      t.datetime :succeeded_at
      t.datetime :failed_at
      t.timestamps
    end
  end
end
