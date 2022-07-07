class Song < ActiveRecord::Base
	belongs_to :user
	belongs_to :song_genre

	belongs_to :song_genre_name, ->{select(:id, :genre)}, class_name: "SongGenre", foreign_key: :song_genre_id

	validates :name, :duration, :song_genre, :user, presence: true

end
