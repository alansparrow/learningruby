#!/usr/bin/env ruby
if fork.nil?
  exec "ruby checkdomain.rb"
end

puts "This Ruby script now runs alongside otherprogram.rb"