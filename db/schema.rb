# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120518072549) do

  create_table "businesses", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "contact_name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "pincode"
    t.string   "phone"
    t.string   "fax"
    t.string   "website"
    t.text     "default_message"
    t.text     "default_quote"
    t.text     "refund_message"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "businesses", ["user_id"], :name => "businesses_user_id_fk"

  create_table "customer_contacts", :force => true do |t|
    t.integer  "customer_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "designation"
    t.string   "email"
    t.string   "phone"
    t.boolean  "is_primary"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "customer_contacts", ["customer_id"], :name => "customer_contacts_customer_id_fk"

  create_table "customers", :force => true do |t|
    t.integer  "business_id"
    t.string   "name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "pincode"
    t.string   "phone"
    t.string   "fax"
    t.string   "website"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "customers", ["business_id"], :name => "customers_business_id_fk"

  create_table "discounts", :force => true do |t|
    t.integer  "business_id"
    t.string   "type"
    t.integer  "value"
    t.boolean  "is_percentage"
    t.boolean  "available"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "invoice_item_discounts", :force => true do |t|
    t.integer  "invoice_item_id"
    t.integer  "discount_id"
    t.integer  "discount_amount"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "invoice_item_discounts", ["discount_id"], :name => "invoice_item_discounts_discount_id_fk"
  add_index "invoice_item_discounts", ["invoice_item_id"], :name => "invoice_item_discounts_invoice_item_id_fk"

  create_table "invoice_item_taxes", :force => true do |t|
    t.integer  "invoice_item_id"
    t.integer  "tax_id"
    t.integer  "tax_amount"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "invoice_item_taxes", ["invoice_item_id"], :name => "invoice_item_taxes_invoice_item_id_fk"

  create_table "invoice_items", :force => true do |t|
    t.integer  "invoice_id"
    t.integer  "item_id"
    t.integer  "qty"
    t.integer  "tax_amount"
    t.integer  "discount_amount"
    t.integer  "subtotal"
    t.integer  "total"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "invoice_items", ["invoice_id"], :name => "invoice_items_invoice_id_fk"
  add_index "invoice_items", ["item_id"], :name => "invoice_items_item_id_fk"

  create_table "invoices", :force => true do |t|
    t.integer  "invoice_no"
    t.integer  "business_id"
    t.integer  "customer_id"
    t.string   "order_no"
    t.text     "customer_notes"
    t.text     "terms"
    t.integer  "tax_amount"
    t.integer  "discount_amount"
    t.integer  "subtotal"
    t.integer  "total"
    t.string   "currency"
    t.datetime "issued_at"
    t.datetime "due_on"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "invoices", ["business_id"], :name => "invoices_business_id_fk"
  add_index "invoices", ["customer_id"], :name => "invoices_customer_id_fk"

  create_table "items", :force => true do |t|
    t.integer  "business_id"
    t.string   "sku"
    t.string   "name"
    t.text     "description"
    t.integer  "price"
    t.string   "unit"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "items", ["business_id"], :name => "items_business_id_fk"

  create_table "logos", :force => true do |t|
    t.integer  "business_id"
    t.string   "file_name"
    t.string   "content_type"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "logos", ["business_id"], :name => "logos_business_id_fk"

  create_table "staffs", :force => true do |t|
    t.integer  "business_id"
    t.integer  "user_id"
    t.boolean  "enabled"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "staffs", ["business_id"], :name => "staffs_business_id_fk"
  add_index "staffs", ["user_id"], :name => "staffs_user_id_fk"

  create_table "taxes", :force => true do |t|
    t.integer  "business_id"
    t.string   "type"
    t.integer  "value"
    t.boolean  "is_percentage"
    t.boolean  "available"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "taxes", ["business_id"], :name => "taxes_business_id_fk"

  create_table "users", :force => true do |t|
    t.string   "email",              :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password"
    t.string   "encrypted_password"
    t.string   "salt"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_foreign_key "businesses", "users", :name => "businesses_user_id_fk"

  add_foreign_key "customer_contacts", "customers", :name => "customer_contacts_customer_id_fk"

  add_foreign_key "customers", "businesses", :name => "customers_business_id_fk"

  add_foreign_key "invoice_item_discounts", "discounts", :name => "invoice_item_discounts_discount_id_fk"
  add_foreign_key "invoice_item_discounts", "invoice_items", :name => "invoice_item_discounts_invoice_item_id_fk"

  add_foreign_key "invoice_item_taxes", "invoice_items", :name => "invoice_item_taxes_invoice_item_id_fk"

  add_foreign_key "invoice_items", "invoices", :name => "invoice_items_invoice_id_fk"
  add_foreign_key "invoice_items", "items", :name => "invoice_items_item_id_fk"

  add_foreign_key "invoices", "businesses", :name => "invoices_business_id_fk"
  add_foreign_key "invoices", "customers", :name => "invoices_customer_id_fk"

  add_foreign_key "items", "businesses", :name => "items_business_id_fk"

  add_foreign_key "logos", "businesses", :name => "logos_business_id_fk"

  add_foreign_key "staffs", "businesses", :name => "staffs_business_id_fk"
  add_foreign_key "staffs", "users", :name => "staffs_user_id_fk"

  add_foreign_key "taxes", "businesses", :name => "taxes_business_id_fk"

end
