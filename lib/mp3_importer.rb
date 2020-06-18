class MP3Importer

  @@all = [ ]
  attr_reader :name
  def initialize(name)
    @name = name
    @@all << self
  end
    
  def files
    @@all
  end
  
  def import
  
  end
end