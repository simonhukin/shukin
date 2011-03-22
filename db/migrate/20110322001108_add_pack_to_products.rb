class AddPackToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :pack, :text
  end

  def self.down
    remove_column :products, :pack
  end
end
