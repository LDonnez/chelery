class AddModuleBooleansToSettings < ActiveRecord::Migration
  def change
    add_column :settings, :enable_galleries, :boolean
    add_column :settings, :enable_groups, :boolean
    add_column :settings, :enable_ranking, :boolean
    add_column :settings, :enable_news, :boolean
  end
end
