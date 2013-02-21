#!/usr/bin/env ruby
x = "Hello, World!"
puts x.tainted?

y = [x, x, x]
puts y.tainted?

z = 20 + 50
puts z.tainted?

a = File.open("oliver.txt").readlines.first
puts a.tainted?

b = [a]
puts b.tainted?

while x = gets
  next if x.tainted?
  puts "=> #{eval(x)}"
end
