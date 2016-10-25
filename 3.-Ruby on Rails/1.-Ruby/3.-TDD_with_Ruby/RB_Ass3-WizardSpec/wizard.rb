require_relative "human.rb"

class Wizard < Human

    def initialize
        @strength = 3
        @intelligence = 25
        @stealth = 3
        @health = 50
    end

    def heal
        @health += 10
        self
    end

    def fireball(obj)
        obj.health -= 20
    end
end

wiz1 = Wizard.new
wiz2 = Wizard.new

hum1 = Human.new


puts "Human"
hum1.display_status
puts
puts "Wizard"
wiz1.display_status
