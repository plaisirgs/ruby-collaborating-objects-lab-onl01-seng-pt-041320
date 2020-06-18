class Artist
   @@all = []

  attr_accessor :name
  attr_reader :songs
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
  end
 
  def self.all
    @@all << self
  end
  
  def save
    @@all.push(self)
    self
  end
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
    
  end
  
  def self.find_by_name(name)
    @@all.detect do |artist|
    artist.name == name
    end
  end
  
  def self.create_by_name(name)
    self.new(name).save
  end
  
  def print_songs
    @songs.each {|s| puts s.name}
  end
 
end