# == Schema Information
#
# Table name: invoice_item_discounts
#
#  id              :integer(4)      not null, primary key
#  invoice_item_id :integer(4)
#  discount_id     :integer(4)
#  discount_amount :integer(4)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#
# Indexes
#
#  invoice_item_discounts_invoice_item_id_fk  (invoice_item_id)
#  invoice_item_discounts_discount_id_fk      (discount_id)
#

class InvoiceItemDiscount < ActiveRecord::Base
  attr_accessible :discount_amount, :discount_id, :invoice_item_id
end
