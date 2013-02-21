require 'csv'
people = CSV.read('test1.txt')
laura = people.find { |person| person[0] =~ /Laura/ }
laura[0] = 'Laura Smith'

puts CSV.open('test1.txt', 'w')
CSV.open('test1.txt', 'w') do |csv|
  people.each do |person|
    csv << person
  end
end


