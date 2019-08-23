class Playlist < ActiveRecord::Migration[5.2]
  def change

    create_table :playlists do |table|
      table.string :name
      table.integer :user_id

      table.timestamps

    end

  end
end
