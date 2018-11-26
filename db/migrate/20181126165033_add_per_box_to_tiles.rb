class AddPerBoxToTiles < ActiveRecord::Migration[5.2]
  def change
    add_column :tiles, :per_box, :integer
  end
end
