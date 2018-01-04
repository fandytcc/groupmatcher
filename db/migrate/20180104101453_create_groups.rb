class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :group
      t.date :day

      t.timestamps
    end
  end
end
