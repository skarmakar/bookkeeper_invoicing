# == Schema Information
#
# Table name: customers
#
#  id          :integer(4)      not null, primary key
#  business_id :integer(4)
#  name        :string(255)
#  address1    :string(255)
#  address2    :string(255)
#  city        :string(255)
#  state       :string(255)
#  country     :string(255)
#  pincode     :string(255)
#  phone       :string(255)
#  fax         :string(255)
#  website     :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#
# Indexes
#
#  customers_business_id_fk  (business_id)
#

class Customer < ActiveRecord::Base
  attr_accessible :address1, :address2, :business_id, :city, :country, :fax, :name, :phone, :pincode, :state, :website
end
