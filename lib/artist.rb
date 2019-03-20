require 'pry'

class Artist 
  attr_accessor :name
  
  @@all = [] 
  
  def self.all 
    @@all 
  end 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end 
  
  def songs
    Song.all.select do |song|
      song.artist.name == @name 
    end 
  end 
  
  def genres
    songs.collect do |song|
      song.genre
    end 
  end 
  
end 