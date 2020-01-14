require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

owner1 = CarOwner.new("Owner_1")
owner2 = CarOwner.new("Owner_2")
owner3 = CarOwner.new("Owner_3")

mechanic1 = Mechanic.new("Mechanic_1", "Exotic")
mechanic2 = Mechanic.new("Mechanic_2", "Clunker")
mechanic3 = Mechanic.new("Mechanic_3", "Antique")
mechanic4 = Mechanic.new("Mechanic_4", "Exotic")
mechanic5 = Mechanic.new("Mechanic_1", "Exotic")


car1 = Car.new("Make_1", "Model_1", "Exotic", owner1)
car2 = Car.new("Make_1", "Model_2", "Antique", owner1)
car3 = Car.new("Make_2", "Model_1", "Exotic", owner3)
car4 = Car.new("Make_1", "Model_3", "Exotic", owner2)
car5 = Car.new("Make_3", "Model_3", "Clunker", owner1)
car6 = Car.new("Make_5", "Model_5", "Antique", owner2)
car7 = Car.new("Make_9", "Model_8", "Clunker", owner3)
car8 = Car.new("Make_9", "Model_8", "Clunker", owner1)


binding.pry
