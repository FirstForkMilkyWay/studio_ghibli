class Movies
  attr_accessor :title, :director, :producer, :release_date

  @@all = []

  def initialize
    @@all <<self
  end

  def self.all
    @@all
  end 



end
