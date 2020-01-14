class CarOwner
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def cars #<-- helper method to connect w/ connector
    Car.all.select { |car| car.owner == self }
  end

  def owners_mechanic
    cars.map(&:mechanic))
  end


  def self.avg_cars_owned
    sum_cars = Car.all.length
    sum_owners = all.length
    avg = (sum_cars / sum_owners).to_f
  end

  def self.all
    @@all
  end

end
