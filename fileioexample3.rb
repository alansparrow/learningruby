f = File.open("test1.txt")
f.pos = 8
puts f.gets
puts f.pos