class Song

#create a song class to take in 4 arguments and
#allow then to be viewed  as a hash, the 4 arguments

#INPUTS
#--------
#Title: string
#Artist: string
#Year: string
#Duration: fixnum ( seconds )
#OUTPUT
#--------
#song as a hash of all inputs
#EXTRA
#--------
#Method .to_s created to be called as required

attr_reader :song

def initialize(title,artist,year,duration)
  @song = Hash.new  
  @song = {title: title, artist: artist, year: year, duration: duration}
end


def to_s
  return "Song: #{@song[:title]} \n Artist: #{@song[:artist]} \n Year: #{@song[:year]} \n Duration: #{@song[:duration]} seconds"
end

end