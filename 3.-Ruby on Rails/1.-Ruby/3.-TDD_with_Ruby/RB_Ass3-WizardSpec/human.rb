class Human

  attr_accessor :strength, :intelligence, :health, :stealth

  def initialize
    @strength = 3
    @intelligence = 3
    @stealth = 3
    @health = 100
  end

  def display_status
      puts "Strength: #{@strength}"
      puts "Intelligence #{@intelligence}"
      puts "Stealth: #{@stealth}"
      puts "Health: #{@health}"
  end

  def attack(obj)
    if obj.class.ancestors.include?(Human)
      obj.health -= 10
      puts "Attack effective"
      true
    else
        puts "Not human"
      false
    end
  end

end
