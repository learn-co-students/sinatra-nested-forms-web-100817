class Ship
  attr_accessor :name, :type, :booty

  @@all = []

  def initialize(attributes)
    @name = attributes[:name]
    @type = attributes[:type]
    @booty = attributes[:booty]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    self.all.clear
  end

end
