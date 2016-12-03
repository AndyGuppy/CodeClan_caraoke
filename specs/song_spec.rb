require("minitest/autorun")
require("minitest/rg")
require_relative("../song_class.rb")

class SongSpec < MiniTest::Test

  def test_can_create_song
    song = Song.new("You're the voice","John Farnham", "2009", 300)
    assert_equal(Song, song.class)
  end

  def test_to_string

    song = Song.new("You're the voice","John Farnham", "2009", 300)
    actual = song.to_s
    expected = "Song: You're the voice \n Artist: John Farnham \n Year: 2009 \n Duration: 300 seconds"
    assert_equal(expected, actual)
    
  end
end