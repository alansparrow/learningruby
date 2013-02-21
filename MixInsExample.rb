module UsefulFeatures
  def class_name
    self.class.to_s
  end
end

class Person
  include UsefulFeatures
end

x = Person.new
puts x.class_name

module AnotherModule
  def do_stuff
    puts "This is a test"
  end
end

#def do_stuff
 # puts "I am outside"
#end
include AnotherModule
do_stuff
#AnotherModule.do_stuff
