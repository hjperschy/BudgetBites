class AddAvgPriceToStyles < ActiveRecord::Migration[5.0]
  def change
    add_column :styles, :avgPrice, :float
  end
end
