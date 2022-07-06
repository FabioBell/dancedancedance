class Song < ActiveRecord::Base
	belongs_to :user
	belongs_to :song_genre

	validates :name, :duration, :genre_id, presence: true


end
