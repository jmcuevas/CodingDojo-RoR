class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fiirst_name
      t.string :last_name
      t.string :email_address
      t.integer :age

      t.timestamps null: false
    end
  end
end
