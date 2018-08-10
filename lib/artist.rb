require "pry"
class Artist
 attr_accessor :name


  def initialize(name)
    @name = name
    @songs =[]
    @@count = 0
  end

  def songs
   @songs
  
  end

  def self.song_count
     Song.all.count
  end
####why can't use self.songs.count
  def add_song(song)
     @songs << song
    song.artist = self

  end

  def add_song_by_name(new_song)
    song = Song.new(new_song)
    @songs << song
    song.artist = self

  end



end
