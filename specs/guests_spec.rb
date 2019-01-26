require("minitest/autorun")
require("minitest/rg")
require_relative("../guests.rb")
require_relative("../rooms.rb")
require_relative("../songs.rb")

class GuestTest < MiniTest::Test

  def setup()
    @guest = Guest.new("Nancy Drew" ,20.00 , "Highway to Hell")
    @room = @room = Room.new("AC/DC",20)
    @song = Song.new("Highway to Hell","AC/DC")
  end

  def test_can_create_guest()
    assert_equal(Guest, @guest.class)
  end

  def test_get_guest_name()
    assert_equal("Nancy Drew",@guest.guest_name)
  end

  def test_get_cash()
    assert_equal(20,@guest.guest_cash)
  end

  def test_get_favourite_song()
    assert_equal("Highway to Hell",@guest.favourite_song)
  end
  def test_reduce_cash()
    assert_equal(10.00,@guest.reduce_cash(@guest,10))
  end


end
