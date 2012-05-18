class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.integer :business_id
      t.integer :user_id
      t.boolean :enabled

      t.timestamps
    end
    add_foreign_key :staffs, :businesses
    add_foreign_key :staffs, :users
  end
end
