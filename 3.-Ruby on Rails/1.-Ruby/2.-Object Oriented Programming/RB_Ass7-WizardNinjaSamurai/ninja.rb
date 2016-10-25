require_relative "human.rb"

class Ninja < Human

    def initialize
        @strength = 3
        @intelligence = 3
        @stealth = 175
        @health = 100
    end

    def steal(obj)
        obj.health -= 10
        @health += 10
    end

    def get_away
        @health -= 15
        self
    end

end

nin1 = Ninja.new
hum1 = Human.new

nin1.get_away

puts "Human"
hum1.display_status

puts "Ninja"
nin1.display_status
