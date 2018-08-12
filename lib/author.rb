class Author

attr_accessor :name
attr_reader :posts

def initialize(name)
  @name = name
  @posts = []
end


def add_post(post)
  @posts << post
  post.author = self
end

def add_post_by_title(title)
  new_post = Post.new(title) #create new object
  new_post.author = self
  @posts << new_post #add object to thse array

end

def self.post_count
  Post.all.count
end




end #end of author class
