class AddCategoryToProducts < ActiveRecord::Migration
  def change
      add_column :products, :cateory, :string
  end
end
