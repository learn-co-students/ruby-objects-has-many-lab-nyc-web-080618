require 'pry'
class Artist
  attr_reader :name

  @@artists = []

  def initialize(name)
    @name = name
    @songs = []
    @@artists << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end

  def self.song_count
    total_songs = 0
    @@artists.each do |artist|
      total_songs += artist.songs.length
    end
    total_songs
  end

  
end
