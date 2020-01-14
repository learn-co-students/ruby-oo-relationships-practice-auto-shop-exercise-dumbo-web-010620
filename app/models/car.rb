class Car

  attr_reader :make, :model, :classification, :owner

  @@all = []

  def initialize(make, model, classification, owner)
    @make = make
    @model = model
    @classification = classification
    @owner = owner

    @@all << self
  end

  def self.classification
    self.all.map do |car_instance|
      car_instance.classification
    end
  end

  def self.all
    @@all
  end

  def expert_mechanics
    Mechanic.all.select do |mechanic_instance|
      mechanic_instance.specialty == self.classification
    end
  end

end
