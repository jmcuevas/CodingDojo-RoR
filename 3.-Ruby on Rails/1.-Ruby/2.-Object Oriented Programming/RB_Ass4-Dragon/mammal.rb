class Mammal
  @health = 150

  def initialize
    @health = 150
  end

  def display_health
    print "The health is #{@health}"
    return self
  end
end
