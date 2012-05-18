class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :business_id
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :country
      t.string :pincode
      t.string :phone
      t.string :fax
      t.string :website

      t.timestamps
    end
    add_foreign_key :customers, :businesses
  end
end
