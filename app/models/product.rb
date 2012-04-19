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


  default_scope :order => 'products.name ASC'

  def self.search(search)
    if search
     # find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
     # ILIKE only works for Postgres which is what runs on Heroku. Change back to LIKE if you need to test on SQLLITE locally
     if RAILS_ENV == 'development'
       find(:all, :joins => :category, :conditions => ['products.name LIKE ? OR categories.name LIKE ?', "%#{search}%", "%#{search}%"])
       # find(:all, :conditions => ['name LIKE :search OR category_id LIKE :search OR manufacturer_id LIKE :search', {:search => "%#{search}%"}])
     else
       find(:all, :joins => :category, :conditions => ['products.name ILIKE ? OR categories.name ILIKE ?', "%#{search}%", "%#{search}%"])
     end
    else
      find(:all)
    end
  end


end
