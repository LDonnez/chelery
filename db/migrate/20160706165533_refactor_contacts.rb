class RefactorContacts < ActiveRecord::Migration
  def change
    drop_table :contacts
    add_column :settings, :facebook_url, :string
    add_column :settings, :twitter_url, :string
    add_column :settings, :github_url, :string
    add_column :settings, :instagram_url, :string
    add_column :settings, :linkedin_url, :string
  end
end
