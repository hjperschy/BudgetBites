class AddStudentdiscountToStyles < ActiveRecord::Migration[5.0]
  def change
    add_column :styles, :studentDiscount, :boolean
  end
end
