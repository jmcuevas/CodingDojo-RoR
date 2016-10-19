class MathDojo

  attr_accessor :sumTotal

  def initialize
    @sumTotal = 0
  end

  # Method add
  def add(*values)
    if values.class == Array
      @sumTotal += values.flatten.reduce(:+)
    else
      @sumTotal += values
    end
      return self
  end

  # Method substract
  def substract (*values)
    if values.class == Array
      @sumTotal -= values.flatten.reduce(:+)
      return self
    else
      @sumTotal -= values
    end
  end
end

numbers = MathDojo.new
myArr = [1,2,3,4,5]
myArr2 = [1,4,5,3]
numbers.add(myArr, myArr2).substract(myArr2)
puts numbers.sumTotal
