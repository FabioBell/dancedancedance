class CreateSongGenres < ActiveRecord::Migration
  def change
    create_table :song_genres do |t|
      t.string :genre

      t.timestamps
    end
    add_column :songs, :genre_id, :integer
    remove_column :songs, :genre
  end
end
