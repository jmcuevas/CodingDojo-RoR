require_relative 'mammal'


class Dragon < Mammal
  # Have the default health be 170
  def initialize
    @health = 170
    self
  end

  #  Add a new method called fly, which when invoked, decreased the health by 10.
  def fly
    @health -= 10
    self
  end

  #  Add a new method called attack_town, which when invoked, decreased the health by 50.
  def attack_town
    @health += 50
    self
  end

  #  Add a new method called eat_humans, which when invoked, increases the health by 20.
  def eat_humans
    @health += 20
    self
  end
end

#  Have the Dragon attack_town three times, eat_humans twice, fly twice, and have it display its health. When the Dragon's displayHealth function is called have it say 'this is a dragon!' before it displays the default information (make sure you still call the parent's display_health function).

smaug = Dragon.new
smaug.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly
puts "This is a dragon!"
smaug.display_health
