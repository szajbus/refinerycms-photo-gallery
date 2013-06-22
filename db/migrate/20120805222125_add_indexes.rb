class AddIndexes < ActiveRecord::Migration
  def self.up
    add_index :refinery_photo_gallery_albums, :id, :unique => true
    add_index :refinery_photo_gallery_collections, :id, :unique => true
    add_index :refinery_photo_gallery_photos, :id, :unique => true


    add_index :refinery_photo_gallery_collection_albums, :collection_id
    add_index :refinery_photo_gallery_collection_albums, :album_id
    add_index :refinery_photo_gallery_photos, :album_id
  end

  def self.down
    remove_index :refinery_photo_gallery_albums, :id
    remove_index :refinery_photo_gallery_collections, :id
    remove_index :refinery_photo_gallery_photos, :id


    remove_index :refinery_photo_gallery_collection_albums, :collection_id
    remove_index :refinery_photo_gallery_collection_albums, :album_id
    remove_index :refinery_photo_gallery_photos, :album_id

  end
end
