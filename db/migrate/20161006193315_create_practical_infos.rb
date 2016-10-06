class CreatePracticalInfos < ActiveRecord::Migration
  def change
    create_table :practical_infos do |t|
      t.text :info
      t.timestamps null: false
    end
  end
end
