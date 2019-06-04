class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.integer :stripe_invoice_id
      t.integer :amount
      t.datetime :paid_at
      t.text :description
      t.timestamps
    end
  end
end
