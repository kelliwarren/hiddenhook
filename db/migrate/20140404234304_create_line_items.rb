class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|

      t.string :name
      t.float :price, default: 0.0
      t.integer :quantity, default: 1
      t.integer :order_id

      t.timestamps
      
    end
    add_index :line_items, :order_id
  end
end
