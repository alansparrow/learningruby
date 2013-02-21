Pi  = 3.141592

class OtherPlanet
  #Pi = 4.5
  
  def OtherPlanet.circumference_of_circle(radius)
    radius * 2 * Pi
  end
  
  def OtherPlanet.Pi
    Pi
  end
end

puts OtherPlanet.circumference_of_circle(10)

puts OtherPlanet.Pi
puts OtherPlanet::Pi
puts Pi
