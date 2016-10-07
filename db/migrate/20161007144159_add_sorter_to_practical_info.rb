class AddSorterToPracticalInfo < ActiveRecord::Migration
  def change
    add_column :practical_infos, :sorter, :integer
  end
end
