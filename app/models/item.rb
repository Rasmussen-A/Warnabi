class Item < ActiveRecord::Base
  attr_accessible :available, :by_request, :price, :type, :weight
  validates :product, :material, :presence => true

  belongs_to :product
  belongs_to :material
end
