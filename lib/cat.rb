class Cat
  attr_accessor :mood, :owner
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
