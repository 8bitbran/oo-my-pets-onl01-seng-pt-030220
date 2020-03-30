class Owner
  # code goes here
  attr_accessor :cats, :dogs
  attr_reader :name, :species
  
  @@all = []
  
  
  def self.all 
    @@all
  end
  
  def self.count 
    @@all.count
  end 
  
  def self.reset_all
    @@all.clear()
  end 
  
  def initialize(name)
    @name = name 
    @species = 'human'
    @cats = []
    @dogs = []
    save
  end 
  
  def say_species 
   "I am a #{self.species}."
  end
  
  def cats 
    Cat.all.select {|cat| cat.owner == self}
  end 
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end 
  
  def buy_cat(name)
    @cats << Cat.new(name, self)
  end 
  
  def buy_dog(name)
    @dogs << Dog.new(name, self)
  end
  
  def walk_dogs 
    
  end
  
  def save 
    @@all << self
  end
end