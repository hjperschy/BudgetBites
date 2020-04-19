class AddDbToStyles < ActiveRecord::Migration[5.0]
  def change
    add_column :styles, :db, :boolean
  end
end
