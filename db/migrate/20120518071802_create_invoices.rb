class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :invoice_no
      t.integer :business_id
      t.integer :customer_id
      t.string :order_no
      t.text :customer_notes
      t.text :terms
      t.integer :tax_amount
      t.integer :discount_amount
      t.integer :subtotal
      t.integer :total
      t.string :currency
      t.datetime :issued_at
      t.datetime :due_on

      t.timestamps
    end
    add_foreign_key :invoices, :businesses
    add_foreign_key :invoices, :customers
  end
end
