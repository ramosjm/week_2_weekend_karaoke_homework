class Room
  attr_accessor :room_name, :guest

  def initialize(room_name,guest)
    @room_name = room_name
    @guest = guest
    @playlist = []
  end

  def add_song_to_playlist(song)
    return @playlist <<song
  end



end
