class CarOwner

  attr_reader :name
  @@all = []
  

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all
  end 

  def cars
    Car.all.select do |car_instance|
      car_instance.owner == self 
    end 
  end

  def mechanics 
    #self.cars.mechanic  # first try # got it after thinking on the toilet!
    self.cars.map do |car_instance|
      car_instance.mechanic
    end 
  end

  def self.average # this is a class method?
    Car.all.length/self.all.length
  end 

end
