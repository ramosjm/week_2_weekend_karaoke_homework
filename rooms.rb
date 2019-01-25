class Room
  attr_accessor :room_name, :capacity

  def initialize(room_name, capacity)
    @room_name = room_name
    @guests = []
    @playlist = []
    @capacity = capacity
  end
  def add_guest_to_room(guest)
    return @guests << guest.guest_name
  end

  def remove_guest_from_room(guest)
    guest_indext = @guests.index(guest.guest_name)
     return @guests.pop(guest_indext)
  end

  def add_song_to_playlist(song)
    return @playlist << song
  end




end
