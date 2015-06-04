# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Song.delete_all
Album.delete_all
Genre.delete_all
AlbumSong.delete_all



g1 = Genre.create(name: 'Grunge')
g2 = Genre.create(name: 'Electronica')
g3 = Genre.create(name: 'Power_pop')
g4 = Genre.create(name: 'Metal  ')



a1 = g1.albums.create(name: 'Nevermind', artist: 'Nivarna', price: 10)
a2 = g2.albums.create(name: 'Syro', artist: 'Aphex Twin' , price: 30)
a3 = g3.albums.create(name: '1989', artist: 'Taylor Swift', price: 5)
a4 = g4.albums.create(name: 'Iowa', artist: 'Slipknot', price: 7)


s1 = Song.create(name: 'Nivarna - Smells like teen spirit', price: 1)
s2 = Song.create(name: 'Aphex Twin - isatsana', price: 1)
s3 = Song.create(name: 'Taylor Swift - Shake it off', price: 1)
s4 = Song.create(name: 'Slipknot - My Plauge', price: 1)

a1.album_songs.create(song_id: s1.id)
a2.album_songs.create(song_id: s3.id)
a3.album_songs.create(song_id: s2.id)
a4.album_songs.create(song_id: s4.id)



