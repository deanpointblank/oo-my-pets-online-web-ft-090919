class Dog
  # code goes here
  attr_accessor :owner, :mood
  attr_writer :name
  
  
  @@all = []
  
  def initialize(name, owner)
    @name = name
    @owner = owner
  end
  
  def self.all
    @@all
  end
end