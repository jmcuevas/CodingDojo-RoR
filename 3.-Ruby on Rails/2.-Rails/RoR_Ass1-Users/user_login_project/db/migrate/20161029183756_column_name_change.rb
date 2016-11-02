class ColumnNameChange < ActiveRecord::Migration
  def change
      rename_column :users, :fiirst_name, :first_name
  end
end
