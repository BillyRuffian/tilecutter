class CreateSchemeTiles < ActiveRecord::Migration[5.2]
  def change
    create_table :scheme_tiles do |t|
      t.decimal :ratio
      t.references :tile, foreign_key: true

      t.timestamps
    end
  end
end
