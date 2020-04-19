class AddAdressToStyles < ActiveRecord::Migration[5.0]
  def change
    add_column :styles, :address, :string
  end
end
