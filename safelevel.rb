#!/usr/bin/env ruby
class Person
end

#$SAFE = 2 false/untainted
$SAFE = 3 #tainted
person = Person.new
puts person.tainted?
