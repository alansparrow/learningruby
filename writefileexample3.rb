File.new("test.txt", "r:utf-8").each { |line| puts line }

puts File.open("test.txt", "r:utf-8").external_encoding
puts File.open("test.txt", "r").external_encoding