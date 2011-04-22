class CreateQuotes < ActiveRecord::Migration
  def self.up
    create_table :quotes do |t|
      t.integer :enquiry_id
      t.integer :product_id
      t.integer :quantity

      t.timestamps
    end
    add_index :quotes, :enquiry_id
    add_index :quotes, :product_id

  end

  def self.down
    drop_table :quotes
  end
end
