File.open("test.txt", "r:utf-8:US-ASCII") do |f|
  puts f.external_encoding
  first_line = f.gets
  puts first_line.encoding
end
