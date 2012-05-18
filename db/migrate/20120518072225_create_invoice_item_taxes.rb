class CreateInvoiceItemTaxes < ActiveRecord::Migration
  def change
    create_table :invoice_item_taxes do |t|
      t.integer :invoice_item_id
      t.integer :tax_id
      t.integer :tax_amount

      t.timestamps
    end
    add_foreign_key :invoice_item_taxes, :invoice_items
  end
end
