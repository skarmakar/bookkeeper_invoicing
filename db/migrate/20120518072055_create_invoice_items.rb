class CreateInvoiceItems < ActiveRecord::Migration
  def change
    create_table :invoice_items do |t|
      t.integer :invoice_id
      t.integer :item_id
      t.integer :qty
      t.integer :tax_amount
      t.integer :discount_amount
      t.integer :subtotal
      t.integer :total

      t.timestamps
    end
    add_foreign_key :invoice_items, :items
    add_foreign_key :invoice_items, :invoices
  end
end
