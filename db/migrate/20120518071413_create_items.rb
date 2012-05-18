class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :business_id
      t.string :sku
      t.string :name
      t.text :description
      t.integer :price
      t.string :unit

      t.timestamps
    end
    add_foreign_key :items, :businesses
  end
end
