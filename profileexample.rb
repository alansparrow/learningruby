require 'profile'
class Calculator
  def count_to_large_number
    x = 0
    1000000.times { x += 1 }
    x
  end
  
  def count_to_small_number
    x = 0
    100000.times { x += 1 }
    x
  end
end

a = Calculator.new
b = Calculator.new
puts a.count_to_large_number
puts a.count_to_small_number
