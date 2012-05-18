# == Schema Information
#
# Table name: invoice_item_taxes
#
#  id              :integer(4)      not null, primary key
#  invoice_item_id :integer(4)
#  tax_id          :integer(4)
#  tax_amount      :integer(4)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#
# Indexes
#
#  invoice_item_taxes_invoice_item_id_fk  (invoice_item_id)
#

class InvoiceItemTax < ActiveRecord::Base
  attr_accessible :invoice_item_id, :tax_amount, :tax_id
end
