class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :facebook_url
      t.string :twitter_url
      t.string :github_url
      t.string :instagram_url
      t.timestamps null: false
    end
  end
end
