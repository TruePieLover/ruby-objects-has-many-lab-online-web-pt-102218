class Author
attr_accessor :name
   @@array = []
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
    Post.all.select do |x| 
      post.author == self
    end
  end
   def self.post_count
    Post.all.count
  end
end