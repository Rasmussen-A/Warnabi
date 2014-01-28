class Product < ActiveRecord::Base
  attr_accessible :description, :metatags, :name, :category, :manufacturer
  validates :name, :description, :category, :manufacturer, :presence => true

  belongs_to :category
  belongs_to :manufacturer
  has_many :items, :dependent => :destroy
end
