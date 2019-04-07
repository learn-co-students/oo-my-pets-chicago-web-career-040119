require "pry"

class Owner

attr_accessor :pets
attr_reader :species, :name

@@all = []
@@count = 0


  def initialize(species, pets)
    @name = name
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @@count += 1
  end# code goes here

def self.all
  @@all
end

def self.count
  @@count
end

def self.reset_all
  @@all.clear
end

def say_species
 "I am a #{self.species}"
end

def buy_fish(fishy)
fish = Fish.new(fishy) #create new instance of fish
@pets[:fishes] << fish #add that instance to the hash under the appropriate key
end

def buy_cat(kitty)
  cat = Cat.new(kitty)
  @pets[:cats] << cat
end

def buy_dog(pup)
  dog = Dog.new(pup)
  @pets[:dogs] << dog
end

def walk_dogs
  @pets[:dogs].each do |dog|
    dog.mood = "happy"
  end
end

def play_with_cats
  @pets[:cats].each do |cat|
    cat.mood = "happy"
  end
end

def feed_fish
  @pets[:fish].each do |fish|
    fish.mood = "happy"
  end
end

def sell_pets
  @pets.each do |species, pets| #species = fishes, pets = fish instances
    pets.each do |pet| #pet = bubbles, etc.
      pet.mood = "nervous" #change each pet's mood to nervous
    end
pets.clear #sell pets by clearing their instances
  end
end

def list_pets
  "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
end


  end
