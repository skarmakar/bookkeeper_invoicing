# == Schema Information
#
# Table name: customer_contacts
#
#  id          :integer(4)      not null, primary key
#  customer_id :integer(4)
#  first_name  :string(255)
#  last_name   :string(255)
#  designation :string(255)
#  email       :string(255)
#  phone       :string(255)
#  is_primary  :boolean(1)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#
# Indexes
#
#  customer_contacts_customer_id_fk  (customer_id)
#

class CustomerContact < ActiveRecord::Base
  attr_accessible :customer_id, :designation, :email, :first_name, :is_primary, :last_name, :phone
end
