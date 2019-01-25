class Room
  attr_accessor :room_name

  def initialize(room_name)
    @room_name = room_name
    @guest = []
    @playlist = []
  end
  def add_guest_to_room(guest)
    return @guest << guest.guest_name
  end


  def add_song_to_playlist(song)
    return @playlist << song
  end



end
