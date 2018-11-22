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
  end
end