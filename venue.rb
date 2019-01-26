class Venue
  attr_accessor :name, :till, :fee

  def initialize(name,till, fee)
    @name = name
    @till = till
    @fee = fee
  end

end
