#!/usr/bin/env ruby
require 'socket'

server = TCPServer.new(1234)

loop do
  Thread.start(server.accept) do |connection|
    while line = connection.gets
      break if line =~ /quit/
      puts line
      connection.puts "Required!"
    end
    
    connection.puts "Closing the connection. Bye!"
    connection.close
  end
end
