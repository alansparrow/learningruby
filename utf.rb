#encoding: UTF-8
#puts "안녕하세요"
#puts "안녕하세요".encoding
#puts "Trần Nguyễn Bảo Trung".encoding
#puts Encoding.list

File.open("encoding.txt", "r") do |f|
  puts f.gets
  puts f.gets
end

