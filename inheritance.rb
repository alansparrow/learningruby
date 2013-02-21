#!/usr/bin/env ruby
class GrandParentClass
  def method1
    puts "Hello from method1 in the grandparent class"
  end
  
  def special_method
    puts "special method from grandpa!"
  end
end
class ParentClass < GrandParentClass
  def method1
    super
    puts "Hello from method1 in the parent class"
  end
  
  def method2
    puts "Hello from method2 in the parent class"
  end
end

class ChildClass < ParentClass
  def method2
    method1
    puts "Hello from method2 in the child class"
    super
  end
end

my_object = ChildClass.new
my_object.method1
my_object.method2
my_object.special_method