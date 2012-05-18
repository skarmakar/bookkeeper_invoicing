# == Schema Information
#
# Table name: invoices
#
#  id              :integer(4)      not null, primary key
#  invoice_no      :integer(4)
#  business_id     :integer(4)
#  customer_id     :integer(4)
#  order_no        :string(255)
#  customer_notes  :text
#  terms           :text
#  tax_amount      :integer(4)
#  discount_amount :integer(4)
#  subtotal        :integer(4)
#  total           :integer(4)
#  currency        :string(255)
#  issued_at       :datetime
#  due_on          :datetime
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#
# Indexes
#
#  invoices_business_id_fk  (business_id)
#  invoices_customer_id_fk  (customer_id)
#

class Invoice < ActiveRecord::Base
  attr_accessible :business_id, :currency, :customer_id, :customer_notes, :discount_amount, :due_on, :invoice_no, :issued_at, :order_no, :subtotal, :tax_amount, :terms, :total
end
