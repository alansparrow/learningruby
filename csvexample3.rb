require 'csv'
people = CSV.read('test1.txt')
laura = people.detect { |person| person[0] =~ /Laura/ }
puts laura.inspect

young_people = people.find_all do |p|
  p[3].to_i.between?(20,40)
end
puts "Young people: #{young_people}"

