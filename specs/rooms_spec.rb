require("minitest/autorun")
require("minitest/rg")
require_relative("../rooms.rb")
require_relative("../songs.rb")
require_relative("../guests.rb")

class RoomTest < MiniTest::Test

  def setup()
    @guest = Guest.new("Nancy Drew")
    @room = Room.new("AC/DC",@guest)
  end

  def test_can_create_room()
    assert_equal(Room,@room.class)
  end


end
