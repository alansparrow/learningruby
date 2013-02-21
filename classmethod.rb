class Square
  def initialize
    @@number_of_squares = defined?(@@number_of_squares) ? @@number_of_squares + 1 : 1
  end
  
  def self.count
    @@number_of_squares
  end
end

a = []
10.times do
  a << Square.new
  puts Square.count
end
