class RemoveBoxQuantityFromTiles < ActiveRecord::Migration[5.2]
  def change
    remove_column :tiles, :box_quantity, :integer
  end
end
