require "pry"

class Song
  attr_accessor :artist
  attr_reader :name
  @@all = []
  
  def initialize(name)
    @artist = artist
    @@all << self
    @name = name
    
  end
  
  def self.all
    @@all
  end
  
  def artist_name
  if self.artist == nil
    return nil    
  else 
    a = self.artist.name
  end 
    
  end
  
  
end