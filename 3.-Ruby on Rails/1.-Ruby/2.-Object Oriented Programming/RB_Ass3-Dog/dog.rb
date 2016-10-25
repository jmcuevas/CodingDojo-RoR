require_relative 'mammal'

class Dog < Mammal
 #  Default health by 150 (inherited)
 # A method called pet, which when invoked, increase the health by 5
 def pet
   @health += 5
   return self
 end

 # A method called walk, which when invoked, decreases the health by 1
 def walk
   @health -= 1
   return self
 end

 # A method called run, which when invoked, decreases the health by 10
 def run
   @health -= 10
   return self
 end
end


 # A method called display_health (inherited)
 # Have the Dog walk three times, run twice, petted once, and have it display its health.
tommy = Dog.new
# 3.times {tommy.walk}
# 2.times {tommy.run}
# tommy.pet
tommy.walk.walk.walk.run.run.pet
tommy.display_health
