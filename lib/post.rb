class Post
attr_accessor :title, :author
  @@array = []
  def initialize(title)
    @title = title
    @@array << self
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