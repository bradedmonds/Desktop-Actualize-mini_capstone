class AddInventoryToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :inventory, :integer
    add_column :products, :supplier_id, :integer
  end
end
