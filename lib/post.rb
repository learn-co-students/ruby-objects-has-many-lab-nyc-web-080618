class Post

attr_accessor :title, :author


@@all = []

def initialize(title)
  @title = title
  @@all << self
end

def self.all
  @@all
end

def author
  @author
end

def author_name
  if author == nil
    author
  else
    author.name
  end
end

end #end of class
