#!/usr/bin/env ruby
class Person
  @@count = 0
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@count += 1
  end
  
  def show_count
    @@count
  end
end

p1 = Person.new("Peter")
p2 = Person.new("Messi")

p p1
p p2
p p1.show_count
p p2.show_count