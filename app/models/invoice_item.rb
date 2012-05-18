# == Schema Information
#
# Table name: invoice_items
#
#  id              :integer(4)      not null, primary key
#  invoice_id      :integer(4)
#  item_id         :integer(4)
#  qty             :integer(4)
#  tax_amount      :integer(4)
#  discount_amount :integer(4)
#  subtotal        :integer(4)
#  total           :integer(4)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#
# Indexes
#
#  invoice_items_item_id_fk     (item_id)
#  invoice_items_invoice_id_fk  (invoice_id)
#

class InvoiceItem < ActiveRecord::Base
  attr_accessible :discount_amount, :invoice_id, :item_id, :qty, :subtotal, :tax_amount, :total
end
