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
    return @playlist << song.song_title
  end

  def remove_song_from_playlist(song)
    song_index = @playlist.index(song.song_title)
    return @playlist.pop(song_index)
  end

  def play_song(song)
    return "Playing: #{song.song_title} by #{song.artist}"
  end
  def pause_song(song)
    return "Song Paused: #{song.song_title} by #{song.artist}"
  end

  def check_in(guest)
    add_guest_to_room(guest)
    return "Welcome #{guest.guest_name}. You have Checked In successfully!"
  end

  def check_out(guest)
    remove_guest_from_room(guest)
    return "#{guest.guest_name} has been Checked Out. Please come again!"
  end
  def number_of_guests()
    return @guests.count
  end

  def add_group_to_room(group)
    group.each{|person|@guests << person }
  end

  def over_capacity_group(group)
    return "Room over capacity, please try a new room or come back later." if group.count > @capacity - number_of_guests()
  end

  def over_capacity_guest(guest)
    guest_array = []
    guest_array << guest.guest_name
    return "Room over capacity, please try a new room or come back later." if guest_array.count > @capacity - number_of_guests()
  end




end
