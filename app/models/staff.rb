# == Schema Information
#
# Table name: staffs
#
#  id          :integer(4)      not null, primary key
#  business_id :integer(4)
#  user_id     :integer(4)
#  enabled     :boolean(1)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#
# Indexes
#
#  staffs_business_id_fk  (business_id)
#  staffs_user_id_fk      (user_id)
#

class Staff < ActiveRecord::Base
  attr_accessible :business_id, :enabled, :user_id
end
