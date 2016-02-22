class CreateJoinTableProjectsPhotos < ActiveRecord::Migration
  def change
    create_join_table :projects, :photos do |t|
      t.index [:project_id, :photo_id]
      t.index [:photo_id, :project_id]
    end
  end
end
