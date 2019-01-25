require("minitest/autorun")
require("minitest/rg")
require_relative("../rooms.rb")
require_relative("../songs.rb")
require_relative("../guests.rb")

class RoomTest < MiniTest::Test

  def setup()
    @guest = Guest.new("Nancy Drew")
    @room = Room.new("AC/DC")
    @song = Song.new("Thunderstruck")
  end

  def test_can_create_room()
    assert_equal(Room,@room.class)
  end

  def test_get_room_name()
    assert_equal("AC/DC",@room.room_name)
  end

  def test_add_guest_to_room()
    assert_equal(["Nancy Drew"],@room.add_guest_to_room(@guest))
  end

  # def test_has_guest()
  #   assert_equal(["Nancy Drew"],@guest.guest_name)
  # end

  def test_add_song_to_playlist()
    assert_equal("Thunderstruck",@song.song_title)
  end
end
