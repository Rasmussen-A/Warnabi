class Material < ActiveRecord::Base
  attr_accessible :available, :by_request, :price, :type, :weight
  validates :type, :presence => true

  has_one :product
end
