class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
      rename_column :users, :dojo, :languaje
  end
end
