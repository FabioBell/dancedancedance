# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	
	
	User.destroy_all
	SongGenre.destroy_all

	user1 = User.create(email:"Fab", password:"123456", password_confirmation:"123456")
	user2 = User.create(email:"Fab2", password:"123456", password_confirmation:"123456")
	user3 = Admin.create(email:"admin", password:"123456", password_confirmation:"123456")
	sg1 = SongGenre.create(genre:"Rock")
	sg2 = SongGenre.create(genre:"Pop")
	sg3 = SongGenre.create(genre:"Classic")
	sg4 = SongGenre.create(genre:"Country")

	user1.songs.create([
		{ name:"Beautiful Song", duration:1330, song_genre_id: sg1.id },
		{ name:"High Song", duration:1770, song_genre_id: sg2.id },
		{ name:"Good Song", duration:130, song_genre_id: sg3.id },
		{ name:"Super Song", duration:231, song_genre_id: sg4.id }
	])
	user2.songs.create([
		{ name:"Normal Song", duration:11, song_genre_id: sg1.id },
		{ name:"Extreme Song", duration:5730, song_genre_id: sg2.id},
		{ name:"Low Song", duration:99, song_genre_id: sg3.id },
		{ name:"Average Song", duration:1230, song_genre_id: sg4.id}
	])
