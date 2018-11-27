class DropJoinTableTilesRooms < ActiveRecord::Migration[5.2]
  def change
    drop_join_table :tiles, :rooms do |t|
      # t.index [:tile_id, :room_id]
      # t.index [:room_id, :tile_id]
    end
  end
end
