# == Schema Information
#
# Table name: logos
#
#  id           :integer(4)      not null, primary key
#  business_id  :integer(4)
#  file_name    :string(255)
#  content_type :string(255)
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#
# Indexes
#
#  logos_business_id_fk  (business_id)
#

class Logo < ActiveRecord::Base
  attr_accessible :business_id, :content_type, :file_name
end
