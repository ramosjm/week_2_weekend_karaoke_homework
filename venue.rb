class Venue
  attr_accessor :name, :till, :fee

  def initialize(name,till, fee)
    @name = name
    @till = till
    @fee = fee
  end


  def check_in(guest)
    add_guest_to_room(guest)
    return "Welcome #{guest.guest_name}. You have Checked In successfully!"
  end

  def check_out(guest)
    remove_guest_from_room(guest)
    return "#{guest.guest_name} has been Checked Out. Please come again!"
  end

end
