
def new_screen()
  system "clear"
  puts " Welcome to CodeClan Caraoke "
  puts "-----------------------------"
end

def menu(rooms, roomnames)
  puts "Rooms Avaliable "
  puts "----------------"
  roomnames.each do |x|
    puts "#{x.name.upcase} (#{x.maxroomsize} guests max)  -- Number of songs in room - #{x.playlist.count}"
  end

  puts
  puts
  puts "Option      Desciption"
  puts "------      ----------"
  puts "  1         Add a room"
  if rooms != 0 

    puts "  2         Add a song"
    puts "  3         Add a guest"
    puts "  4         View a rooms guest list"
    puts "  5         View a rooms song playlist"
  else
  end
  puts 
  puts "  EXIT      EXIT the program back to Terminal"
  puts 
  puts 
end