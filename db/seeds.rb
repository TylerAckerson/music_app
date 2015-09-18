user1 = User.create!(email: "u1@email.com", password: "password")
user2 = User.create!(email: "u2@email.com", password: "password")
user3 = User.create!(email: "u3@email.com", password: "password")

band1 = Band.create!(name: "the police")
band2 = Band.create!(name: "hall and oates")
band3 = Band.create!(name: "foreigner")

album1 = Album.create!(name: "greatest hits 1", band_id: band1.id, setting: "studio")
album2 = Album.create!(name: "greatest hits 2", band_id: band1.id, setting: "live")
album3 = Album.create!(name: "greatest hits 3", band_id: band2.id, setting: "studio")
album4 = Album.create!(name: "greatest hits 4", band_id: band3.id, setting: "studio")

track1 = Track.create!(album_id: album1.id, ttype: "regular", name: "intro track")
track2 = Track.create!(album_id: album1.id, ttype: "regular", name: "the ballad ")
track3 = Track.create!(album_id: album1.id, ttype: "regular", name: "outro track")
track4 = Track.create!(album_id: album1.id, ttype: "bonus", name: "bonus track")
track5 = Track.create!(album_id: album2.id, ttype: "regular", name: "one long track")
