#encoding: UTF-8
require 'open-uri'

f = open('http://www.rubyinside.com/test.txt')
puts f.readlines

f = open('http://www.rubyinside.com/test.txt')

puts "The document is #{f.size} bytes in length"

f.each_line do |line|
  puts line
end

open('http://www.rubyinside.com/test.txt') do |f|
  puts f.readlines.join
end

url = URI.parse('http://www.rubyinside.com/test.txt')
url.open { |f| puts f.read }

puts URI.parse('http://www.rubyinside.com/test.txt').open.read
