class Scheme < ApplicationRecord
  has_and_belongs_to_many :rooms
  has_many :scheme_tiles
end
