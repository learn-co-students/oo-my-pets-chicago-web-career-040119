class Owner
  #class ///////////
  @@all = []

  def self.all
    @@all
  end

  def self.count
    self.all.size
  end

  def self.reset_all
    @@all = []
  end
  #instance ////////
  attr_accessor :pets, :name
  attr_reader :species

  def initialize(name)
    #class ///////////
    @@all << self
    #instance ////////
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    @pets[:cats] << new_cat
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].map { |dog|
      dog.mood = "happy"
    }
  end

  def play_with_cats
    @pets[:cats].map { |cat|
      cat.mood = "happy"
    }
  end

  def feed_fish
    @pets[:fishes].map { |fish|
      fish.mood = "happy"
    }
  end

  def sell_pets
    @pets.each_value { |arr|
      arr.map { |pet|
        pet.mood = "nervous"
      }
    }
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    cats = @pets[:cats].size
    fish = @pets[:fishes].size
    dogs = @pets[:dogs].size

    "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end

end
