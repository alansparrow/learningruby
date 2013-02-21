#!/usr/bin/env ruby
class Class
  def add_accessor(accessor_name)
    self.class_eval %Q{
      def #{accessor_name}
        @#{accessor_name}
      end
      
      def #{accessor_name}=(value)
        @#{accessor_name} = value
      end
    }
  end
end

class Person
  def say_it
    puts "Hello World!"
  end
end


person = Person.new
Person.add_accessor :name
person.name = "Bao Trung"
person.say_it
puts person.name