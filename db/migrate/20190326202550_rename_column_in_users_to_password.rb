class RenameColumnInUsersToPassword < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :first_name, :password 
  end
end
