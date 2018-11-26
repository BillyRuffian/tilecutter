class CreateTiles < ActiveRecord::Migration[5.2]
  def change
    create_table :tiles do |t|
      t.string :name
      t.string :description
      t.decimal :cost
      t.integer :box_quantity

      t.timestamps
    end
  end
end
