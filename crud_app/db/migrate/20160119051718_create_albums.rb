class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :artist
      t.string :album
      t.string :cover_art

      t.timestamps null: false
    end
  end
end
