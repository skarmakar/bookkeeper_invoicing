class CreateCustomerContacts < ActiveRecord::Migration
  def change
    create_table :customer_contacts do |t|
      t.integer :customer_id
      t.string :first_name
      t.string :last_name
      t.string :designation
      t.string :email
      t.string :phone
      t.boolean :is_primary

      t.timestamps
    end
    add_foreign_key :customer_contacts, :customers
  end
end
