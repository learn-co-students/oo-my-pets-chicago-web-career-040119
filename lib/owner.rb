require "Pry"
class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}


  end
  def self.all
    @@all
  end
  def self.count
    all.count
  end
  def say_species
    "I am a #{@species}."
  end
  def self.reset_all
    all.clear
  end
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end
def buy_cat(name)
  @pets[:cats] << Cat.new(name)
end
def buy_dog(name)
  @pets[:dogs] << Dog.new(name)
end
def walk_dogs
  self.pets[:dogs].map do |dog|
    dog.mood = "happy"
  end
end
def play_with_cats
  self.pets[:cats].map do |cat|
    cat.mood = "happy"
  end
end
def feed_fish
  self.pets[:fishes].map do |fish|
    fish.mood = "happy"
  end
end
def sell_pets

    self.pets[:dogs].each do |dog|
      dog.mood = "nervous"
end
self.pets[:dogs].delete_if do |dog|
  dog.mood = "nervous"
end

self.pets[:cats].each do |cat|
  cat.mood = "nervous"
end
self.pets[:cats].delete_if do |cat|
cat.mood = "nervous"
end
self.pets[:fishes].each do |fish|
  fish.mood = "nervous"
end
self.pets[:fishes].delete_if do |fish|
fish.mood = "nervous"
end
end
def list_pets
list = @pets.values.to_a
"I have #{list[0].length} #{list[0][0].class.to_s.downcase},"\
  " #{list[1].length} #{list[1][0].class.to_s.downcase}(s),"\
  " and #{list[2].length} #{list[2][0].class.to_s.downcase}(s)."
end
end
