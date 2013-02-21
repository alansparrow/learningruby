#!/usr/bin/env ruby
require 'digest/sha2'

puts "Enter the password to use this program:"
password = gets.chomp
if Digest::SHA2.hexdigest(password) == '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'
  puts "You've passed"
else
  puts "Wrong!"
  exit
end
