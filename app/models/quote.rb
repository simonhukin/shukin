class Quote < ActiveRecord::Base
  attr_accessible :enquiry_id, :product_id, :quantity

  belongs_to :enquiry
  belongs_to :product

  accepts_nested_attributes_for :products

  after_create :ac_callback

  private
  def after_create
    existing_quote = self.find_by_enquiry_id_and_product_id(enquiry_id, product_id)
    existing_quote.quantity = "9999"
    existing_quote.save
  end
end
