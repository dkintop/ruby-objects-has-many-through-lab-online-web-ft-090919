class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @songs = []
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end 
  
  def new_song(name, genre)
    new = Song.new(name, self, genre)
    self.songs << new
  end 
  
  
  
  

end