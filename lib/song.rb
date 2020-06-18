class Song
  @@all = []
  attr_reader :artist, :name
  def initialize(name)
    @name = name
    @artist = nil
  end
  
 def self.all
   @@all
  end

  def artist_name
    
  end
  
end