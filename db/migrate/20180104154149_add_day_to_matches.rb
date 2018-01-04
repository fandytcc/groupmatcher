class AddDayToMatches < ActiveRecord::Migration[5.1]
  def change
    add_column :matches, :day, :date
    add_column :matches, :matches, :string, array: true, default: []
  end
end
