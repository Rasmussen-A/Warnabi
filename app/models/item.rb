class Item < ActiveRecord::Base
  attr_accessible :available, :by_request, :price, :type, :weight
  validates :product, :presence => true

  belongs_to :product
  has_one :material
end
