class Car
  attr_accessor :make, :model, :classification, :owner, :mechanic
  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def self.classifications
    all.map(&:classification)
  end
  
  def mechanics_specialization
    Mechanic.all.select { |mechanic| mechanic.specialty == self.classification }
  end

  def self.all
    @@all
  end

end
