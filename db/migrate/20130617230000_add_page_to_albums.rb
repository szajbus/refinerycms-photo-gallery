class AddPageToAlbums < ActiveRecord::Migration
  def self.up
    add_column :refinery_photo_gallery_albums, :page_id, :integer
    add_index :refinery_photo_gallery_albums, :page_id
  end

  def self.down
    remove_column :refinery_photo_gallery_albums, :page_id
  end
end
