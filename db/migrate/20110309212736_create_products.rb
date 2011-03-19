class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.integer :manufacturer_id

      t.timestamps
    end
    add_index :products, :manufacturer_id
  end

  def self.down
    drop_table :products
  end
end
