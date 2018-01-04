class AddDataToGroups < ActiveRecord::Migration[5.1]
  def change
    add_column :groups, :groups, :string, array: true, default: []
  end
end
