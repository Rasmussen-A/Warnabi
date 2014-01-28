class Category < ActiveRecord::Base
  attr_accessible :name, :parent_category

  validates :name, :uniqueness => true

  # Category can't be destroyed if any dependent products exist
  has_many :products, :dependent => :restrict

  # Define subcategories as categories with parent_id != nil
  has_many :subcategories, :class_name => 'Category',
    :foreign_key => 'parent_id', :dependent => :restrict
  belongs_to :parent, :class_name => 'Category'
end
