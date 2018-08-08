class Song
  @@all =  [ ]
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist=(artist)
    @artist = artist
  end

  def artist
    @artist
  end

  def artist_name
    if self.artist.class === nil
      nil
    else
      self.artist.name
    end
  end

  def self.all
    @@all
  end  


end
