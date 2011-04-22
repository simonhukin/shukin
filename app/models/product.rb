class Product < ActiveRecord::Base

  has_many :quotes, :dependent => :destroy
  has_many :enquiries, :through => :quotes

  belongs_to :manufacturer
  belongs_to :category
  belongs_to :sub_category


  validates :name, :presence => true, :length => { :maximum => 140 }
  validates :manufacturer_id, :presence => true
  validates :category_id, :presence => true
  validates :sub_category_id, :presence => true
end
