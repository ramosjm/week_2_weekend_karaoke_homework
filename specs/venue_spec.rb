require("minitest/autorun")
require("minitest/rg")
require_relative("../rooms.rb")
require_relative("../venue.rb")
require_relative("../guests.rb")
require_relative("../songs.rb")

class VenueTest < MiniTest::Test

    def setup()
      @room = Room.new("AC/DC",5)
      @venue = Venue.new("K Bar",@room,100.00,20)
      @guest = Guest.new("Nancy Drew",20.00,"You")
      @guest_1 = Guest.new("Dave",15.00,"Thunderstruck")
      @guest_2 = Guest.new("Steve",50.00,"Me")
      @guest_3 = Guest.new("Karla",30.00,"Him")
      @guest_4 = Guest.new("Tracey",10.00,"Her")
      @group = [@guest_1,@guest_2,@guest_3,@guest_4]
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
      @venue.check_in(@room,@guest)
      @venue.check_in(@room,@guest_1)
      assert_equal(2,@room.number_of_guests())
    end

    def test_check_out()
      @venue.check_in(@room,@guest)
      @venue.check_in(@room,@guest_1)
      @venue.check_in(@room,@guest_2)
      @venue.check_out(@room,@guest_2)
      assert_equal(2,@room.number_of_guests())
    end

    def test_add_fee_to_till()
      assert_equal(120, @venue.add_fee_to_till(@venue.fee))
    end

    def test_charge_fee_to_guest()
      assert_equal(0,@venue.charge_fee_to_guest(@guest,@venue.fee))
    end


end
