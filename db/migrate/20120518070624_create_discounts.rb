class CreateDiscounts < ActiveRecord::Migration
  def change
    create_table :discounts do |t|
      t.integer :business_id, :null => false
      t.string :type, :null => false
      t.integer :value, :null => false
      t.boolean :is_percentage, :null => false
      t.boolean :available, :null => false

      t.timestamps
    end
  end
end
