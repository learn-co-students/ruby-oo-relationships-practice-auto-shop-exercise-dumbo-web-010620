class Mechanic

  attr_reader :name, :specialty
  
  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty

    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select do |car_instance|
      car_instance.expert_mechanics.include?(self)
    end
  end

  def car_owners
    array = self.cars.map do |car_instance|
      car_instance.owner
    end
    array.uniq
  end

  def car_owner_names
    self.car_owners.map do |car_owner_instance|
      car_owner_instance.name
    end
  end

end
