class Product < ActiveRecord::Base

  belongs_to :manufacturer
  belongs_to :category
  belongs_to :sub_category

  validates :name, :presence => true, :length => { :maximum => 140 }
  validates :manufacturer_id, :presence => true
  validates :category_id, :presence => true
  validates :sub_category_id, :presence => true
end
