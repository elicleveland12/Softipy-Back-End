class AddUserIdColumnToPlaylists < ActiveRecord::Migration[5.2]
  def change
    add_column :playlists, :user_id, :integer
  end
end
