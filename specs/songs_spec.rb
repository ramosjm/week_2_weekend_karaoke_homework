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

end
