class AddColumsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :username, :string, null: false, default: ""
  end
end
