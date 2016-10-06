class AddPracticalInfoBooleanToSettings < ActiveRecord::Migration
  def change
    add_column :settings, :enable_practical_infos, :boolean
  end
end
