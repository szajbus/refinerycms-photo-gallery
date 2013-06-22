class CreateCollections < ActiveRecord::Migration
  def self.up
    create_table :refinery_photo_gallery_collections do |t|
      t.string :title, :null => false
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :refinery_photo_gallery_collections
  end
end
