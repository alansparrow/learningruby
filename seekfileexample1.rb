f = File.new("test1.txt", "r")
while a = f.getc
  puts a.chr
  f.seek(5, IO::SEEK_CUR)
end

t = File.mtime("test1.txt")
puts t.hour
puts t.min
puts t.sec