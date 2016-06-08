class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :headline
      t.string :subline
      t.text :header_column_1
      t.text :header_column_2
      t.text :header_column_3
      t.timestamps null: false
    end
  end
end
