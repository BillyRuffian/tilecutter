class AddPerSquareMeterToTiles < ActiveRecord::Migration[5.2]
  def change
    add_column :tiles, :per_square_meter, :decimal
  end
end
