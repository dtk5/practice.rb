class SolarSystem
	attr_accessor :name, :planets
	def initialize(name, planets)
		@name = name
		@planets = planets
	end
end

class Planet < SolarSystem
	def add_planets(planet)
		@planets.push(planet)
	end
end

danny = Planet.new("Danny", ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"])
danny.add_planets("Myplanet")


puts danny.inspect
