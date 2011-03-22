class AddSubCategoryIdToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :sub_category_id, :integer
  end

  def self.down
    remove_column :products, :sub_category_id
  end
end
