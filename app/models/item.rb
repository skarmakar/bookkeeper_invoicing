# == Schema Information
#
# Table name: items
#
#  id          :integer(4)      not null, primary key
#  business_id :integer(4)
#  sku         :string(255)
#  name        :string(255)
#  description :text
#  price       :integer(4)
#  unit        :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#
# Indexes
#
#  items_business_id_fk  (business_id)
#

class Item < ActiveRecord::Base
  attr_accessible :business_id, :description, :name, :price, :sku, :unit
end
