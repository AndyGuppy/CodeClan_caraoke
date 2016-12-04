require("minitest/autorun")
require("minitest/rg")
require( "pry" )
require_relative("../room_class.rb")
require_relative("../guest_class.rb")
require_relative("../song_class.rb")

class RoomSpec < MiniTest::Test

  def test_can_create_room
    room=Room.new("pop", 5)
    assert_equal(Room, room.class)
  end

  def test_can_add_guest_to_room
    room = Room.new("Rock", 2)
    guest = Guest.new("Matthew")
    
    actual = room.add_guest(guest.guestname)
    expected = "Matthew has been added to the Rock room"
    
    assert_equal(expected, actual)
  end

  def test_limit_guest_entry
    room = Room.new("Rock", 2)
    matthew = Guest.new("Matthew")
    beth = Guest.new("Beth")
    simon = Guest.new("Simon")
    room.add_guest(matthew.guestname)
    room.add_guest(beth.guestname)
    actual = room.add_guest(simon.guestname)
    expected = "The Rock room is full and Simon cannot be added " 
    assert_equal(expected, actual)
  end

  def test_can_remove_guest_from_room
    #create room
    room = Room.new("Rock", 3)

    #create guests
    matthew = Guest.new("Matthew")
    beth = Guest.new("Beth")
    simon = Guest.new("Simon")

    #add guests to room
    room.add_guest(matthew.guestname)
    room.add_guest(beth.guestname)
    room.add_guest(simon.guestname)

    #expected result of the test
    expected = "Matthew has been Removed from the Rock room"

    #actual test result
    actual = room.remove_guest("Matthew")

    #perform the test
    assert_equal(expected, actual)
  end

  def test_can_remove_guest_from_room_not_found
    #create room
    room = Room.new("Rock", 3)
    
    #create guests
    matthew = Guest.new("Matthew")
    simon = Guest.new("Simon")

    #add guests to room
    room.add_guest(matthew.guestname)
    room.add_guest(simon.guestname)

    #expected result of the test
    expected = "Failed to find Beth in the Rock room"

    #actual test result
    actual = room.remove_guest("Beth")

    #perform the test
    assert_equal(expected, actual)
  end

  def test_can_add_song_to_rooms_playlist
    room = Room.new("Rock", 2)
    song1 = Song.new("You're the voice","John Farnham", "1986", 300)
    song2 = Song.new("An Innocent Man","Billy Joel", "1983", 317)

    actual = room.add_song(song1.song)
    expected = "'You're the voice' has been added to the Rock room's playlist"    
    assert_equal(expected, actual)

    actual = room.add_song(song2.song)
    expected = "'An Innocent Man' has been added to the Rock room's playlist"    
    assert_equal(expected, actual)

  end

  def test_can_remove_song_from_playlist
    #create room
    room = Room.new("Rock", 3)

    #create songs
    song1 = Song.new("You're the voice","John Farnham", "1986", 300)
    song2 = Song.new("An Innocent Man","Billy Joel", "1983", 317)
    song3 = Song.new("Take Me To Church","Hozier", "2015", 242)

    #add songs to rooms playlist
    room.add_song(song1.song)
    room.add_song(song2.song)
    room.add_song(song3.song)

    #expected result of the test
    expected = "'An Innocent Man' has been Removed from the Rock room's playlist"

    #actual test result
    actual = room.remove_song("An Innocent Man")

    #perform the test
    assert_equal(expected, actual)
  end

  def test_can_remove_song_from_playlist_not_found
    #create room
    room = Room.new("Rock", 3)

    #create songs
    song1 = Song.new("You're the voice","John Farnham", "1986", 300)
    song2 = Song.new("An Innocent Man","Billy Joel", "1983", 317)
    song3 = Song.new("Take Me To Church","Hozier", "2015", 242)

    #add songs to rooms playlist
    room.add_song(song1.song)
    room.add_song(song2.song)
    room.add_song(song3.song)

    #expected result of the test
    expected = "Failed to find 'The honey Theif' in the Rock room's playlist"
  

    #actual test result
    actual = room.remove_song("The honey Theif")

    #perform the test
    assert_equal(expected, actual)
  end
end
