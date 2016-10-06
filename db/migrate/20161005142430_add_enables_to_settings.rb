class AddEnablesToSettings < ActiveRecord::Migration
  def change
    add_column :settings, :enable_rankings, :boolean
    add_column :settings, :enable_agendas, :boolean
  end
end
