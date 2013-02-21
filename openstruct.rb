require "ostruct"
person = OpenStruct.new
person.name = "Fred Bloggs"
person.age = 25
puts person
person.sex = "male"
puts person
