class SchemeTile < ApplicationRecord
  belongs_to :tile
  belongs_to :scheme

  scope :wall,    -> { where( surface: 'wall'    ) }
  scope :feature, -> { where( surface: 'feature' ) }
  scope :floor,   -> { where( surface: 'floor'   ) }
end
