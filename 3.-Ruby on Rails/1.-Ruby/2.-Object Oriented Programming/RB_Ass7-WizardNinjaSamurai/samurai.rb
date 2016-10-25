require_relative "human.rb"

class Samurai < Human

    @@num_of_samurais = 0

    def initialize
        @strength = 3
        @intelligence = 3
        @stealth = 3
        @health = 200
        @@num_of_samurais += 1
    end


    def death_blow(obj)
        obj.health = 0
        puts "Fatality!!!"
    end

    def meditate
        @health = 200
    end

    def self.how_many
        puts "There are #{@@num_of_samurais} samurais"
    end
end


sam1 = Samurai.new
sam2 = Samurai.new
sam3 = Samurai.new

hum1 = Human.new

sam1.death_blow(hum1)

puts "Human"
hum1.display_status

puts "Ninja"
sam1.display_status


puts
Samurai.how_many
