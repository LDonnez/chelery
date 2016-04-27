class CreateJoinTableGalleriesPhotos < ActiveRecord::Migration
  def change
    create_join_table :galleries, :photos do |t|
      t.index [:gallery_id, :photo_id]
    end
  end
end
