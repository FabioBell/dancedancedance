class CreateSongGenres < ActiveRecord::Migration
  def change
    create_table :song_genres do |t|
      t.string :genre

      t.timestamps
    end
    add_column :songs, :song_genre_id, :integer
    remove_column :songs, :genre, :string
    add_index :songs, :song_genre_id

  end
end
