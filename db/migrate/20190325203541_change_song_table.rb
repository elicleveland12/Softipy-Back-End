class ChangeSongTable < ActiveRecord::Migration[5.2]
  def change
      rename_column :songs, :genre, :cover_art 
  end
end
