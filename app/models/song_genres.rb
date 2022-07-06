class SongGenres < ActiveRecord::Base
	has_many :songs
end
