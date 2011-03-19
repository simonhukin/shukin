class Product < ActiveRecord::Base

  belongs_to :manufacturer

  validates :name, :presence => true, :length => { :maximum => 140 }
  validates :manufacturer_id, :presence => true
end
