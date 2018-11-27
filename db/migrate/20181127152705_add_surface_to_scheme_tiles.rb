class AddSurfaceToSchemeTiles < ActiveRecord::Migration[5.2]
  def change
    add_column :scheme_tiles, :surface, :string
  end
end
