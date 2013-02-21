#!/usr/bin/env ruby
sg = Fiber.new do
  s = 0
  loop do
    square = s * s
    Fiber.yield square
    s += 1
  end
end

#puts sg.resume
10.times { puts sg.resume }

sg1 = Fiber.new do
  x = 0
  until x > 10
    puts "I am running!"
    x += 1
  end 
end

sg2 = Fiber.new do
  x = 0
  until x > 10
    puts "I am running!"
    x += 1
  end 
end
sg1.resume
puts "Rest for a while!"
sg2.resume