# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	User.create(id:1, email:"Fab", password:"123456", password_confirmation:"123456")
	User.create(id:2, email:"Fab2", password:"123456", password_confirmation:"123456")
	SongGenres.create(id:1,genre:"Rock")
	SongGenres.create(id:2,genre:"Pop")
	SongGenres.create(id:3,genre:"Classic")
	SongGenres.create(id:4,genre:"Country")
	Song.create(id:1,name:"Beautiful Song", duration:1330, genre_id:1, user_id:1)
	Song.create(id:2,name:"Average Song", duration:1230, genre_id:2, user_id:2)
	Song.create(id:3,name:"Good Song", duration:130, genre_id:3, user_id:1)
	Song.create(id:4,name:"Normal Song", duration:11, genre_id:4, user_id:2)
	Song.create(id:5,name:"Super Song", duration:231, genre_id:4, user_id:1)
	Song.create(id:6,name:"Extreme Song", duration:5730, genre_id:3, user_id:2)
	Song.create(id:7,name:"High Song", duration:1770, genre_id:2, user_id:1)
	Song.create(id:8,name:"Low Song", duration:99, genre_id:1, user_id:2)
