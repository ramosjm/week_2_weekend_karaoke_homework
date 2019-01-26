class Venue
  attr_accessor :name, :room, :till, :fee

  def initialize(name,room,till, fee)
    @name = name
    @room = room
    @till = till
    @fee = fee
  end

  def check_in(room,guest)
    room.add_guest_to_room(guest)
    return "Welcome #{guest.guest_name}. You have Checked In successfully!"
  end

  def check_out(room,guest)
    room.remove_guest_from_room(guest)
    return "#{guest.guest_name} has been Checked Out. Please come again!"
  end
  
  def add_fee_to_till(fee)
    return @till += fee
  end

end
