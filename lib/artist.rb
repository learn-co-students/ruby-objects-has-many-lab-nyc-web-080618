class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    # Song.all.select do |song|
    #   song.artist = self
    # end
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    @songs << new_song
    new_song.artist = self 
    # add_song(new_song) or directly call above method
  end

  def self.song_count
    Song.all.length
  end

end ##end of class
