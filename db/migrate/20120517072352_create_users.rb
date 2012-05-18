class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, :null => false, :unique => true
      t.string :first_name
      t.string :last_name
      t.string :password, :null => false
      t.string :encrypted_password
      t.string :salt

      t.timestamps
    end
  end
end
