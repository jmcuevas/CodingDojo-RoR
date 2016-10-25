
class Human

    attr_accessor :inteligence
    attr_accessor :strength
    attr_accessor :stealth
    attr_accessor :health

    def initialize
        @inteligence = 3
        @strength = 3
        @stealth = 3
        @health = 100
    end

    def attack(prey)
        if prey.class.ancestors.include? Human
            prey.health -= 3
            puts "Attack was effective."
            puts "The healt is now #{prey.health}"
        else
            puts "it is not a Human"
        end
    end


end


jose = Human.new
aj = Human.new
nicci = Human.new

jose.attack(nicci)
