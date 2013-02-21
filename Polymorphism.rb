class Animal
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
end


class Cat < Animal
  def talk
    puts "Meaow!"
  end
end

class Dog < Animal
  def talk
    puts "Woof!"
  end
end

animals = [Cat.new("Flossie"), Dog.new("Clive"), Cat.new("Max")]
animals.each do |animal|
  puts animal.talk
end
