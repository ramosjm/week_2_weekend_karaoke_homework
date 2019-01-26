require("minitest/autorun")
require("minitest/rg")
require_relative("../rooms.rb")
require_relative("../venue.rb")
require_relative("../guests.rb")
require_relative("../songs.rb")

class VenueTest < MiniTest::Test

    def setup()
      @venue = Venue.new("K Bar",100.00,20)
      @guest = Guest.new("Nancy Drew",20.00,"You")
      @guest_1 = Guest.new("Dave",15.00,"Thunderstruck")
      @guest_2 = Guest.new("Steve",50.00,"Me")
      @guest_3 = Guest.new("Karla",30.00,"Him")
      @guest_4 = Guest.new("Tracey",10.00,"Her")
      @group = [@guest_1,@guest_2,@guest_3,@guest_4]
      @room = Room.new("AC/DC",20)
      @song = Song.new("Thunderstruck","AC/DC")
    end

    def test_can_create_venue
      assert_equal(Venue,@venue.class)
    end

    def test_get_venue_name()
      assert_equal("K Bar",@venue.name)
    end

    def test_get_till()
      assert_equal(100.00,@venue.till)
    end

    def test_get_fee()
      assert_equal(20,@venue.fee)
    end

    def test_check_in()
      @room.check_in(@guest)
      assert_equal(1,@room.number_of_guests())
    end
end
