class Guest
  attr_reader :guest_name, :guest_cash, :favourite_song
  attr_writer :guest_name, :favourite_song

  def initialize(guest_name, guest_cash, favourite_song)
    @guest_name = guest_name
    @guest_cash = guest_cash
    @favourite_song = favourite_song
  end

  def reduce_cash(guest,cash)
   current_cash = guest.guest_cash()
   return current_cash -= cash
  end

end
