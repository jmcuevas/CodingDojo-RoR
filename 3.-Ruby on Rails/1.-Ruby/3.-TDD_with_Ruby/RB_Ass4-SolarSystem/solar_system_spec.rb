require_relative 'solar_system'

RSpec.describe SolarSystem do
    before do
        @solarSystem1 = SolarSystem.new
        @solarSystem2 = SolarSystem.new("Milky Way")
    end


    it "Solar System should be initialized with a name, if not its default name should be 'Andromeda'" do
        expect(@solarSystem1.name).to eq("Andromeda")
        expect(@solarSystem2.name).to eq("Milky Way")
    end

    it "The Solar System class should contain a list of all planets in it." do
        expect(@solarSystem1.planets_list).to eq(["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune", "Pluto" ])
    end

    it "There should be a count of how many planets are in the Solar System." do
        expect(@solarSystem1.planet_count).to eq(9)
    end

    it "Solar System should have a method called Super Nova that destroys all of the planets in it" do
        @solarSystem1.super_nova
        expect(@solarSystem1.planet_count).to eq(0)
    end
end

RSpec.describe Planet do
    before do
        @planet = Planet.new
        @planet.name = "Earth"
        @planet.description = "Home"
        @planet.population = 7000000000
    end

    it "Planet should have a name, description and population" do
        expect(@planet.name).to eq("Earth")
        expect(@planet.description).to eq("Home")
        expect(@planet.population).to eq(7000000000)
    end

    it "The planets added to the Solar System should only be from the Planet class" do

    end


end
