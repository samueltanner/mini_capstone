class ChangeProductsToInteger < ActiveRecord::Migration[6.1]
  def change
    change_column :products, :price, :integer, :precision => 6, :scale => 2
  end
end
