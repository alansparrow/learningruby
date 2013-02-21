class String
  def length
    20
  end
end

puts "This is a test".length
puts "a".length
puts "A really long line of text.".length

class Dog
  def talk
    puts "Woof!"
  end
end

my_dog = Dog.new
my_dog.talk

class Dog
  def talk
    puts "Howl!"
  end
end

my_dog.talk
