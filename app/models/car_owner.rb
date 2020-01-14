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

  def self.average_owned
    array = CarOwner.all.map do |car_owner_instance|
      car_owner_instance.cars.count
    end
    average = array.sum/(CarOwner.all.count).to_f
  end

  def cars
    Car.all.select do |car_instance|
      car_instance.owner == self
    end
  end

  def mechanics
    array = self.cars.map do |car_instance|
      car_instance.expert_mechanics
    end
    array.uniq
  end

end
