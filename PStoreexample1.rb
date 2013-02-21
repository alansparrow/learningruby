require 'pstore'
class Person
  attr_accessor :name, :job, :gender, :age
end
store = PStore.new("storagefile")
people = []
store.transaction do
  people = store[:people]
end
puts people.inspect

people.each do |person|
  puts person.name
end
