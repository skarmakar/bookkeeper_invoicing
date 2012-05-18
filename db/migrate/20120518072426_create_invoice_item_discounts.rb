class CreateInvoiceItemDiscounts < ActiveRecord::Migration
  def change
    create_table :invoice_item_discounts do |t|
      t.integer :invoice_item_id
      t.integer :discount_id
      t.integer :discount_amount

      t.timestamps
    end
    add_foreign_key :invoice_item_discounts, :invoice_items
    add_foreign_key :invoice_item_discounts, :discounts
  end
end
