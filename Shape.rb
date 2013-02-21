def perimeter_of_square(side_length)
	side_length * 4
end

def area_of_square(side_length)
	side_length * side_length
end

def perimeter_of_triangle(side1, side2, side3)
	side1 + side2 + side3
end

def area_of_triangle(base_width, height)
	base_width * height / 2
end

#----------------------------------------------------------------------------------------
class Shape
end

class Square < Shape
	def initialize(side_length)
		@side_length = side_length
	end
	
	def area
		@side_length * @side_length
	end
	
	def perimeter
		@side_length * 4
	end
end

class Triangle < Shape
	def initialize(base_width, height, side1, side2, side3)
		@base_width = base_width
		@height = height
		@side1 = side1
		@side2 = side2
		@side3 = side3
	end
	
	def area
		@base_width * @height / 2
	end
	
	def perimeter
		@side1 + @side2 + @side3
	end
end


puts area_of_triangle(6,6)
puts perimeter_of_square(5)

my_square = Square.new(5)
my_triangle = Triangle.new(6,6,7.81, 7.81, 7.81)
puts my_square.area
puts my_square.perimeter
puts my_triangle.area
puts my_triangle.perimeter