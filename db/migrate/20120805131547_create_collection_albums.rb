class CreateCollectionAlbums < ActiveRecord::Migration
  def self.up
    create_table :refinery_photo_gallery_collection_albums do |t| #TODO primary id to false
      t.references :collection
      t.references :album
    end
  end

  def self.down
    drop_table :refinery_photo_gallery_collection_albums
  end
end
