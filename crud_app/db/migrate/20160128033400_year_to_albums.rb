class YearToAlbums < ActiveRecord::Migration
  def change
    change_table :albums do |t|
      t.integer :year   
    end 
  end
end
