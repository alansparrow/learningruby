#!/usr/bin/env ruby
user_lines = File.readlines("file_client.txt")
user_lines.each do |line|
  puts line
  puts "---"
end
