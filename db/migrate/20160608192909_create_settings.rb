class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :headline
      t.string :subline
      t.text :header_text
      t.timestamps null: false
    end
  end
end
