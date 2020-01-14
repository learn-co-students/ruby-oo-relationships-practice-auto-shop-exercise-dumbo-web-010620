 # join class

class Car

  attr_reader :owner, :mechanic, :classification, :make, :model
  @@all = []
 
  def initialize(owner, mechanic, classification, make, model)
    @owner = owner
    @mechanic = mechanic
    @classification = classification
    @make = make
    @model = model
    @@all << self
  end

  def self.all 
    @@all
  end 

  def self.classifications
    self.all.map do |instance|
      instance.classification
    end.uniq
  end 

  def find_mechanic
    Mechanic.all.select do |instance|
      instance.specialty == self.classification
    end 
    # want to find something that  == self.classification
  end 

end
