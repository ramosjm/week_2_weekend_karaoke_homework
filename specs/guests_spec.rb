require("minitest/autorun")
require("minitest/rg")
require_relative("../guests.rb")

class GuestTest < MiniTest::Test

  def setup()
    @guest = Guest.new("Nancy Drew" ,20 , "You")
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
    assert_equal("You",@guest.favourite_song)
  end


end
