require 'tempfile'
f = Tempfile.new("myapp.txt")
f.puts "Hello"
f.puts "World"
puts f.path
f.pos = 0
puts f.readlines
f.close
