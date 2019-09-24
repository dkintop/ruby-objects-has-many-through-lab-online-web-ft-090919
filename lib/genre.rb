class Genre 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all 
    @@all.each do |genre|
      genre 
    end 
  end
  
  def songs 
    Song.all.select|song|
    song.genre == self
  end
  
  def artists
    self.songs.collect do |song|
      song.artist 
    end
  end
  


end