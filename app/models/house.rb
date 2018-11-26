class House < ApplicationRecord
  include FriendlyId
  friendly_id :name

  has_many :rooms, dependent: :destroy

  def ground_floor_rooms
    rooms.select{ |r| r.ground_floor? }
  end

  def upper_floor_rooms
    rooms.select{ |r| !r.ground_floor? }
  end
end
