class Genre 
  attr_accessor :name 
  @@all = [] 
  
  def self.all 
    @@all 
  end 
  
  def initialize(name)
    @name = name 
    @@all << self 
   # @@all.unshift(self)
  end 
  
  def songs
    Song.all.select do |song|
      song.genre.name == @name 
    end 
  end 
  
  def artists 
    songs.collect do |genre|
      genre.artist 
    end 
  end 

end 