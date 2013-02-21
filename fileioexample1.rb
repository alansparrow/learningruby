$/ = '\n'
File.open("test1.txt").each { |line| puts line }
File.open("test1.txt").each_byte { |byte| puts byte }

puts 70.chr
puts 'F'.ord
puts "test"[0]