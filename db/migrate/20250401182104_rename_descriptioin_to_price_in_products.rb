class RenameDescriptioinToPriceInProducts < ActiveRecord::Migration[8.0]
  def change
    rename_column :products, :descriptioin, :price
    change_column :products, :price, :decimal, using: 'price::numeric'
  end
end
