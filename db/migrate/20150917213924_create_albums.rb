class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name, null: false

      t.timestamps
    end

    create_table :albums do |t|
      t.string :name, null: false
      t.integer :band_id, null: false
      t.string :setting, null: false

      t.timestamps
    end

    create_table :tracks do |t|
      t.integer :album_id, null: false
      t.string :ttype, null: false
      t.text :lyrics

      t.timestamps
    end

    add_index :bands, :name, unique: true
    add_index :tracks, :album_id
    add_index :albums, :band_id
  end
end
