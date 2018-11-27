class AddSchemeIdToSchemeTiles < ActiveRecord::Migration[5.2]
  def change
    add_column :scheme_tiles, :scheme_id, :int
  end
end
