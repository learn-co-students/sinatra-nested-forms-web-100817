class Ship
  @@all = []
  attr_accessor :name, :type, :booty
  def initialize(options = {})
    @name = options[:name]
    @type = options[:type]
    @booty = options[:booty]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end

end
