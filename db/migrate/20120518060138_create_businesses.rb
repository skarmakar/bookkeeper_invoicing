class CreateBusinesses < ActiveRecord::Migration

  def change
    create_table :businesses do |t|
      t.integer :user_id
      t.string :name
      t.string :contact_name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :country
      t.string :pincode
      t.string :phone
      t.string :fax
      t.string :website
      t.text :default_message
      t.text :default_quote
      t.text :refund_message

      t.timestamps
    end

    add_foreign_key :businesses, :users
  end
  

end
