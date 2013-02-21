class Person
  
  
  def name
    puts @name
    return @name
  end
end

class Doctor < Person
  def initialize(name)
    @name = name
  end
  
  def name
    "Dr. " + super
  end
  
  def name
    "Phd. " + super
  end
end

a = Doctor.new("Fuck!")
puts a.name
