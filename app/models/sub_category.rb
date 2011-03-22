class SubCategory < ActiveRecord::Base

  attr_accessible :name, :category_id

  belongs_to :category
  has_many :products
  
  validates :name, :presence => true, :length => { :maximum => 140 }
  validates :category_id, :presence => true

end
