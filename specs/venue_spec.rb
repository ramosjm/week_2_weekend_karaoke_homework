require("minitest/autorun")
require("minitest/rg")
require_relative("../rooms.rb")
require_relative("../songs.rb")
require_relative("../guests.rb")

class VenueTest < MiniTest::Test

    def setup()
      @venue = Venue.new("Kareokray Bar",100)
end
