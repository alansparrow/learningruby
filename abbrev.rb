#!/usr/bin/env ruby
require 'abbrev'
require 'pp'

pp Abbrev::abbrev(%w{Peter Patricia Petal Petunia})


abbrevs = %w{Peter Paul Patricia Petal Pauline}.abbrev
puts "Please enter your name:"
name = gets.chomp

if a = abbrevs.find { |a, n| a.downcase == name.downcase}
  puts "Did you mean #{a.join(' or ')}?"
  name = gets.chomp
end

