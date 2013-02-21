class Square
  def initialize
    if defined?(@@number_of_squares)
      @@number_of_squares += 1
    else
      @@number_of_squares = 1
    end
  end
  
  def self.count
    @@number_of_squares
  end
end
c = []
10.times do
  c << Square.new
end
a = Square.new
b = Square.new
puts Square.count

class Square
  def self.test_method
    puts "Hello from the Square class!"
  end
  def test_method
    puts "Hello from an instance of class Square!"
  end
end

Square.test_method
Square.new.test_method

class Square
  def Square.another_test_method
    puts "Another test method!"
  end
  
  def self.test_method
    puts "Hello from the Self!"
  end
end

Square.another_test_method
Square.test_method