class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.date :release_date
      t.string :artist_name

      t.timestamps null: false
    end
  end
end
