require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Mechanic.new(name, specialty)
m1 = Mechanic.new("Mechanic 1", "clunker")
m2 = Mechanic.new("Mechanic 2", "antique")
m3 = Mechanic.new("Mechanic 3", "exotic")


# CarOwner.new(name)
co1 = CarOwner.new("Car Owner 1")
co2 = CarOwner.new("Car Owner 2")

# Car.new(owner, mechanic, classification, make, model)
c1 = Car.new(co1, m1, "clunker", "Toyota", "Camry")
c2 = Car.new(co1, m2, "antique", "Toyota", "Corolla")
c3 = Car.new(co1, m3, "exotic", "Toyota", "Rav4")
c4 = Car.new(co2, m1, "clunker", "Subaru", "Outback")
c6 = Car.new(co2, m3, "exotic", "Subaru", "HighLife")
c5 = Car.new(co2, m2, "antique", "Subaru", "Forester")
c7 = Car.new(co2, m3, "exotic", "Subaru", "HighLife")


binding.pry
