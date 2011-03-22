class Category < ActiveRecord::Base

  attr_accessible :name

  has_many :sub_categories, :dependent => :destroy
  has_many :products

  validates :name, :presence => true, :length => { :maximum => 140 }


end
