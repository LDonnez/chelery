class AddReferencesToGroups < ActiveRecord::Migration
  def change
    add_reference :groups, :member, index: true, foreign_key: true
    add_reference :members, :group, index: true, foreign_key: true
  end
end
