require 'csv'
people = CSV.parse(File.read('test1.txt'))
puts people[0][0]
puts people[1][0]
puts people[2][0]

puts File.read('test1.txt')
puts CSV.open('test1.txt', 'r')