#!/usr/bin/env ruby
class Parent
  attr_accessor :name
end

class Child < Parent
  attr_accessor :gender
end

person = Child.new
person.name = "CSIGI"
person.gender = "male"
puts person.inspect
