class RemoveGroupFromGroups < ActiveRecord::Migration[5.1]
  def change
    remove_column :groups, :group, :string
    remove_column :groups, :day, :date
  end
end
