class CreateLogos < ActiveRecord::Migration
  def change
    create_table :logos do |t|
      t.integer :business_id
      t.string :file_name
      t.string :content_type

      t.timestamps
    end
    add_foreign_key :logos, :businesses
  end
end
