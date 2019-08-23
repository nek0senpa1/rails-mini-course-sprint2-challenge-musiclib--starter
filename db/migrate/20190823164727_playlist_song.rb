class PlaylistSong < ActiveRecord::Migration[5.2]
  def change

    create_table :playlist_songs do |table|
      table.integer :playlist_id
      table.integer :song_id

      table.timestamps
    end
    
  end
end
