class Product < ActiveRecord::Base
  attr_accessible :description, :metatags, :name
  validates :name, :description, :presence => true

  has_many :materials
end
