require "pry"

class Owner
  # code goes here
  @@all = []
  attr_reader :species, :name
  def initialize(name, species="human")
    
    @name = name
    @species = species
    @@all << self
  end

  def say_species
    "I am a human."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end

  def cats
  Cat.all.select{|cat| cat.owner == self}
  #binding.pry
  end

  def dogs
    Dog.all.select{|dog| dog.owner == self}
    #binding.pry
  end
  
  def buy_cat(name)
    Cat.new(name,self)
  end  

  def buy_dog(name)
    Dog.new(name,self)
  end
   
  


end
