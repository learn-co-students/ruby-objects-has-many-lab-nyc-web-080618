class Post

  @@all =  [ ]

  attr_accessor :title

  def initialize(title)
    @title = title
    @@all << self
  end

  def author=(author)
    @author = author
  end

  def author
    @author
  end

  def author_name
    if self.author.class === nil
      nil
    else
      self.author.name
    end
  end

  def self.all
    @@all
  end


end
