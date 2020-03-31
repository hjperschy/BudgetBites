class CreateStyles < ActiveRecord::Migration[5.0]
  def change
    create_table :styles do |t|
      t.string :styleType
      t.string :resturant
      t.string :price

      t.timestamps
    end
  end
end
