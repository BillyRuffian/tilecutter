class AddGroundFloorToRoom < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :ground_floor, :boolean
  end
end
