require_relative("room_class.rb")
require_relative("guest_class.rb")
require_relative("song_class.rb")
require_relative("screen_functions.rb")

suites = Array.new
rooms = Array.new




option = ""

until option =="EXIT"
  new_screen()
  menu(suites.count,suites)
  option = gets.chomp
  puts option

  case option

  when "1"
    puts "Please enter room name"
    room_name = gets.chomp
    puts "Maximun Guest size ?"
    room_size = gets.chomp
    room = Room.new(room_name,room_size)
#if time put some validation in
suites << room

when "2"
  puts "Please Enter Song Title"
  song_title = gets.chomp
  puts "please Enter Artist Name"
  song_artist = gets.chomp
  puts "Please Enter Year of Song"
  song_year = gets.chomp
  puts "How many seconds does the song last for "
  song_duration = gets.chomp
  song = Song.new(song_title,song_artist,song_year,song_duration)
  puts "which room would you like to add the song to ?"
  song_to_room = gets.chomp

  suites.each do
    |room| 
    if room.name == song_to_room
      room.add_song(song.song)
      puts room.playlist
    else

    end
  end


else

end

loop

end
