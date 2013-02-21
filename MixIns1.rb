module ToolBox
  class Ruler
    attr_accessor :length
  end
end

module Country
  class Ruler
    attr_accessor :name
  end
end

a = ToolBox::Ruler.new
a.length = 50
b = Country::Ruler.new
b.name = "Ghengis Khan of Moskau"

puts a.length
puts b.name

include Country
c = Ruler.new
c.name = "King Henry VIII"

puts c.name

include ToolBox
d = Ruler.new
d.length = 51

puts d.length