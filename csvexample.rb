require 'csv'
CSV.open('test1.txt' , 'r').each do |person|
  puts person.inspect
end
