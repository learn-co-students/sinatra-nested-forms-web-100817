class Pirate

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name, :weight, :height

  def initialize(args)
    @name = args["name"]
    @weight = args["weight"]
    @height = args["height"]
    @@all << self
  end

end