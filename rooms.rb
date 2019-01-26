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
    guest_index = @guests.index(guest.guest_name)
     return @guests.delete_at(guest_index)
  end

  def add_song_to_playlist(song)
    return @playlist << song.song_title
  end

  def remove_song_from_playlist(song)
    song_index = @playlist.index(song.song_title)
    return @playlist.delete_at(song_index)
  end

  def play_song(song)
    return "Playing: #{song.song_title} by #{song.artist}"
  end
  def pause_song(song)
    return "Song Paused: #{song.song_title} by #{song.artist}"
  end

  def number_of_guests()
    return @guests.count
  end

  def add_group_to_room(group)
    group.each{|person|@guests << person }
  end

  def over_capacity_guest(guest)
    guest_array = []
    if guest.class == Array
      guest_array = guest
    else
      guest_array << guest.guest_name
    end
    return "Room over capacity, please try a new room or come back later." if guest_array.count > @capacity - number_of_guests()
  end




end
