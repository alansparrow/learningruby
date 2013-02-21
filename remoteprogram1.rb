#!/usr/bin/env ruby
handle = IO.popen("ruby input.rb", "r+")
handle.puts "send input to other program"
handle.close_write
while line = handle.gets
  puts line
end
