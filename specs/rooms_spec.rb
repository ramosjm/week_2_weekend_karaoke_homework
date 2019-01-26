require("minitest/autorun")
require("minitest/rg")
require_relative("../rooms.rb")
require_relative("../songs.rb")
require_relative("../guests.rb")

class RoomTest < MiniTest::Test

  def setup()
    @guest = Guest.new("Nancy Drew",20.00,"You")
    @guest_1 = Guest.new("Dave",15.00,"Thunderstruck")
    @guest_2 = Guest.new("Steve",50.00,"Me")
    @guest_3 = Guest.new("Karla",30.00,"Him")
    @guest_4 = Guest.new("Tracey",10.00,"Her")
    @group = [@guest_1,@guest_2,@guest_3,@guest_4]
    @room = Room.new("AC/DC",20)
    @song = Song.new("Thunderstruck","AC/DC")
    @song_1 = Song.new("You","Pretty Wreckless")
    @song_2 = Song.new("Losing my Religion","REM")
    @playlist = [@song.song_title,@song_1.song_title,@song_2.song_title]
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
    @room.add_guest_to_room(@guest_1)
    @room.add_guest_to_room(@guest_2)
    @room.remove_guest_from_room(@guest_2)
    assert_equal(2,@room.number_of_guests())
  end

  def test_add_song_to_playlist()
    assert_equal(["Thunderstruck"],@room.add_song_to_playlist(@song))
  end

  def test_remove_song_from_playlist()
    @room.add_song_to_playlist(@song)
    @room.add_song_to_playlist(@song_1)
    @room.add_song_to_playlist(@song_2)
    @room.remove_song_from_playlist(@song)
    assert_equal(2,@room.number_of_songs())
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

  def test_number_of_guests()
      @room.add_guest_to_room(@guest)
      assert_equal(1,@room.number_of_guests())
  end

  def test_add_group_to_room()
    @room.add_group_to_room(@group)
    assert_equal(4,@room.number_of_guests())
  end

  def test_over_capacity__group()
    room = Room.new("Bombay",2)
    assert_equal(true,room.over_capacity_guest(@group))
  end

  def test_over_capacity__single_guest()
    room = Room.new("Bombay",2)
    room.add_guest_to_room(@guest_1)
    room.add_guest_to_room(@guest_2)
    assert_equal(true,room.over_capacity_guest(@guest))
  end

  def test_get_playlist()
    @room.add_song_to_playlist(@song)
    @room.add_song_to_playlist(@song_1)
    @room.add_song_to_playlist(@song_2)
    assert_equal(@playlist, @room.get_playlist())
  end


end
