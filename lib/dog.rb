class Dog
  attr_accessor :mood
  attr_reader :name

  ALL = []

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def self.all
    ALL
  end

end
