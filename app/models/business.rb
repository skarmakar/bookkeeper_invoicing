# == Schema Information
#
# Table name: businesses
#
#  id              :integer(4)      not null, primary key
#  user_id         :integer(4)
#  name            :string(255)
#  contact_name    :string(255)
#  address1        :string(255)
#  address2        :string(255)
#  city            :string(255)
#  state           :string(255)
#  country         :string(255)
#  pincode         :string(255)
#  phone           :string(255)
#  fax             :string(255)
#  website         :string(255)
#  default_message :text
#  default_quote   :text
#  refund_message  :text
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#
# Indexes
#
#  businesses_user_id_fk  (user_id)
#

class Business < ActiveRecord::Base
  attr_accessible :address1, :address2, :city, :contact_name, :country, :default_message, :default_quote, :fax, :name, :phone, :pincode, :refund_message, :state, :user_id, :website
end
