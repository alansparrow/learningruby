#!/usr/bin/env ruby
require 'socket'

server = TCPServer.new(1234)

while connection = server.accept
  p connection
  while line = connection.gets
    break if line =~ /quit/
    puts line
    connection.puts "Received!"
  end
  
  connection.puts "Closing the connection. Bye!"
  connection.close
end
