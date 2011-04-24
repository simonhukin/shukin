class Enquiry < ActiveRecord::Base
  attr_accessible :product_ids, :name, :email, :phone, :fax, :message

  has_many :quotes, :dependent => :destroy
  has_many :products, :through => :quotes

  def validate
    if email.blank? and phone.blank? and fax.blank?
      errors.add_to_base("Please enter a contact method, either email, phone or fax number.")
    end
  end


end
