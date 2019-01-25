require("minitest/autorun")
require("minitest/rg")
require_relative("../songs.rb")

class SongTest < MiniTest::Test

  def setup()
    @song = Song.new("Thunderstruck")
  end

  def test_can_create_song
    assert_equal(Song,@song.class)
  end

  def test_get_song_title()
    assert_equal("Thunderstruck",@song.song_title)
  end

end
