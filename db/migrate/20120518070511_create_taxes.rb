class CreateTaxes < ActiveRecord::Migration
  def change
    create_table :taxes do |t|
      t.integer :business_id
      t.string :type
      t.integer :value
      t.boolean :is_percentage
      t.boolean :available

      t.timestamps
    end
    add_foreign_key :taxes, :businesses
  end
end
