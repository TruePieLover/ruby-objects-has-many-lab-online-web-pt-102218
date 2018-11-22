class Author
attr_accessor :name
   array = []
   @@all = array
   def initialize(name)
    @name = name
    @@array << self
  end
   def self.array
    @@array
  end
  def add_post(post)
    post.author = self
  end
  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
  end
  def posts
    Post.array.select do |x| 
      post.author == self
    end
  end
   def self.post_count
    Post.array.count
  end
end