class SolarSystem
    attr_accessor :name, :planets_list

    def initialize(nam = 'Andromeda')
        @name = nam
        @planets_list = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune", "Pluto" ]
    end

    def planet_count
        @planets_list.count
    end

    def super_nova
        @planets_list.clear
    end
end



class Planet < SolarSystem

    attr_accessor :name, :description, :population

    def add_planets(planet)
        @planets_list.push(planet)
    end

end
