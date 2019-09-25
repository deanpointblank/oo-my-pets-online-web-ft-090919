class Cat
  # code goes here
  attr_accessor :owner, :mood
  attr_reader :name
  
  def initialize(name, owner, mood)
    @name = name
    self.owner = owner
    @mood = mood
  end
end