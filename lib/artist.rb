require "pry" #this is very important in order to establish a link between Artist and Song class
class Artist

attr_accessor :name

def initialize(name)
  @name = name
  @songs = []

end

def songs
  @songs #returns the list of songs an artist has
end

def self.song_count
   Song.all.count
end

def add_song(song)
  self.songs << song
  song.artist = self
  #takes in an argument of a song and
  #associates that song with the artist by telling the song that it belongs to that artist
end

def add_song_by_name(name)
  new_song = Song.new(name)
  @songs << new_song
  new_song.artist = self
end


#binding.pry

end
