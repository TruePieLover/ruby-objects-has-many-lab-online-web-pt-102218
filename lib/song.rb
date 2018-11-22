class Song
  attr_accessor :name, :artist
   @@array = []
   def initialize(name)
    @name = name
    @@array << self
  end
   def self.all
    @@all
  end
   def artist_name
    if self.artist
      self.artist.name
    else
      return nil
    end
  end
end