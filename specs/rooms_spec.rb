require("minitest/autorun")
require("minitest/rg")
require_relative("../rooms.rb")
require_relative("../songs.rb")
require_relative("../guests.rb")

class RoomTest < MiniTest::Test

  def setup()
    @guest = Guest.new("Nancy Drew")
    guest_1 = Guest.new("Dave")
    guest_2 = Guest.new("Steve")
    guest_3 = Guest.new("Karla")
    guest_4 = Guest.new("Tracey")
    @group = [guest_1,guest_2,guest_3,guest_4]
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

  def test_paused_song()
    assert_equal("Song Paused: Thunderstruck by AC/DC",@room.pause_song(@song))
  end

  def test_check_in()
    assert_equal("Welcome Nancy Drew. You have Checked In successfully!",@room.check_in(@guest))
  end

  def test_check_out()
    @room.add_guest_to_room(@guest)
    assert_equal("Nancy Drew has been Checked Out. Please come again!",@room.check_out(@guest))
  end

  def test_number_of_guests()
      @room.add_guest_to_room(@guest)
      assert_equal(1,@room.number_of_guests())
  end

  def test_add_group_to_room()
    @room.add_group_to_room(@group)
    assert_equal(4,@room.number_of_guests())
  end





  # def test_over_capacity()
  #   room = Room.new("Bombay",2)
  #   room.add_group_to_room(@group)
  #
  #
  # end


end
