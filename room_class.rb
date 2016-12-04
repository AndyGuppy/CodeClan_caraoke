require( "pry" )

class Room
# Create a Karaoke room, that adds guest and removed guests, adds songs to playlisr abd removes songs from playlist, also checks the room has room for the guest who is trying to check in

# Work  In Progress


  attr_reader :roomname, :name, :maxroomsize, :guests, :playlist


  def initialize(name,maxroomsize)
    @name = name
    @maxroomsize = maxroomsize
    @guests = []
    @playlist = []
  end

  def add_guest(guest)
    if @guests.count == @maxroomsize
      return "The #{@name} room is full and #{guest} cannot be added "
    else
      @guests << guest
      return "#{guest} has been added to the #{@name} room"
    end
  end

  def remove_guest(guest)
    @guests.each do
      |guestname| 
      if guestname == guest
        guests.delete(guest)
        return "#{guest} has been Removed from the #{@name} room"
      else

      end
    end
# binding.pry
    return "Failed to find #{guest} in the #{@name} room"
  end

  def add_song(song)
    @playlist << song
    return "'#{song[:title]}' has been added to the #{@name} room's playlist"
  end

    def remove_song(song_title)
      @playlist.each do
        |song| 
        if song[:title] == song_title
          playlist.delete(song)
          return "'#{song[:title]}' has been Removed from the #{@name} room's playlist"
        else

        end
      end
  # binding.pry
      return "Failed to find '#{song_title}' in the #{@name} room's playlist"
    end
end