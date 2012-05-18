# == Schema Information
#
# Table name: discounts
#
#  id            :integer(4)      not null, primary key
#  business_id   :integer(4)
#  type          :string(255)
#  value         :integer(4)
#  is_percentage :boolean(1)
#  available     :boolean(1)
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

class Discount < ActiveRecord::Base
  attr_accessible :available, :business_id, :is_percentage, :type, :value
end
