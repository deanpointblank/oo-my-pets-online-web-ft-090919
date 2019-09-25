class Owner
  # code goes here
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats
    Cat.all.select do |my_cat|
      my_cat.owner == self
    end
  end
  
  def dogs
    Dog.all.select do |my_dog|
      my_dog.owner == self
    end
  end
  
  def buy_cat(name)
    Cat.new(name)
  end
  
end