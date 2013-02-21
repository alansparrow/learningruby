#!/usr/bin/env ruby
require 'date'
x = system("date")
puts x
x = `date`
puts x
y = Date.parse(x)
puts y
#puts Date.parse('2001-02-03')
z = %x{date}
puts z