class RemovePriceFromStyles < ActiveRecord::Migration[5.0]
  def change
    remove_column :styles, :price, :string
  end
end
