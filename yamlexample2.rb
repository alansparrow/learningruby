require 'yaml'

class Person
  attr_accessor :name, :age
end


File.open("yamldata.txt", "r") do |f|
  $data = f.readlines.join  
end

retrieve_data = YAML::load($data)
puts retrieve_data[0].inspect
puts retrieve_data[1].inspect
