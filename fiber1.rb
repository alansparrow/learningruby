#!/usr/bin/env ruby
f1 = Fiber.new do
  loop do
    puts "This is fiber 1"
  end
end

f2 = Fiber.new do
  loop do
    puts "This is fiber 2"
  end
end

puts f1.methods
#f2.resume
