class Product < ActiveRecord::Base
  attr_accessible :description, :metatags, :name
  validates :name, :description, :presence => true

  belongs_to :category
  has_one :manufacturer
  has_many :items
end
