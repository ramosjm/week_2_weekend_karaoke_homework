require("minitest/autorun")
require("minitest/rg")
require_relative("../guests.rb")

class GuestTest < MiniTest::Test

  def setup()
    @guest = Guest.new("Nancy Drew")
  end

  def test_can_create_guest()
    assert_equal(Guest, @guest.class)
  end


end
