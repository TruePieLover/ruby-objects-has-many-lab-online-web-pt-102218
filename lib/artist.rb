class Artist
attr_accessor :name
  array = []
   @@all = @@array
  def initialize(name)
    @name = name
    @@array  << self
  end
  def self.all
    @@all
  end
   def self.array
    @@array 
  end
   def add_song(song)
    song.artist = self
  end
   def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end
   def songs
    Song.all.select do |x| 
      song.artist == self
    end
  end
   def self.song_count
    Song.array.count
  enclass Author
  attr_accessor :name
   @@all = []
   def initialize(name)
    @name = name
    @@all << self
  end
   def self.all
    @@all
  end
   def add_post(post)
    post.author = self
  end
   def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
  end
   def posts
    Post.all.select {|post| post.author == self}
  end
   def self.post_count
    Post.all.count
  end
end