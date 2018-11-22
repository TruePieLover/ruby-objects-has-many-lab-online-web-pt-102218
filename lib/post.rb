class Post
attr_accessor :title, :author
     array = []
   @@all = @@array
  def initialize(title)
    @title = title
    @@array << self
  end
  def self.all
    @@all
  end
  def self.all
    @@all
  end
   def self.array
    @@array
  end
 def author_name
  if self.author
      self.author.name
    else
      return nil
    end
  end
end