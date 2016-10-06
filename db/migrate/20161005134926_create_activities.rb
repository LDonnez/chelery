class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.references :agenda
      t.datetime :starts_at
      t.datetime :stops_at
      t.timestamps null: false
    end
  end
end
