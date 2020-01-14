class Mechanic

  attr_reader :name, :specialty
  @@all = []  

  # mechanic#specialty will match car#classification 
  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all 
    @@all
  end

  def cars 
    Car.all.select do |instance|
      # instance.mechanic == self.name  # returns empty array
      # i.e., these never equal each other
      instance.mechanic == self
    end 
  end 

  def car_owners
    self.cars.map do |instance|
      instance.owner
    end.uniq
  end 

  def owner_names
    self.car_owners.map do |instance|
      instance.name
    end 
  end 

end
