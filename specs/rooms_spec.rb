require("minitest/autorun")
require("minitest/rg")
require_relative("../rooms.rb")
require_relative("../songs.rb")
require_relative("../guests.rb")

class RoomTest < MiniTest::Test

  def setup()
    @guest = Guest.new("Nancy Drew")
    @room = Room.new("AC/DC",20)
    @song = Song.new("Thunderstruck","AC/DC")
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

  def test_remove_guest_from_room
    @room.add_guest_to_room(@guest)
    assert_equal([],@room.remove_guest_from_room(@guest))
  end

  def test_add_song_to_playlist()
    assert_equal(["Thunderstruck"],@room.add_song_to_playlist(@song))
  end

  def test_remove_song_from_playlist()
    @room.add_song_to_playlist(@song)
    assert_equal([],@room.remove_song_from_playlist(@song))
  end

  def test_check_capacity()
    assert_equal(20,@room.capacity)
  end

  def test_play_song()
    assert_equal("Playing: Thunderstruck by AC/DC",@room.play_song(@song))
  end

  def test_pased_song()
    assert_equal("Song Paused: Thunderstruck by AC/DC",@room.pause_song(@song))
  end
end
