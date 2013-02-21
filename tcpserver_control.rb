#!/usr/bin/env ruby
require 'daemons'

#Daemons.run('TCPServer.rb')
Daemons.daemonize 
  puts "Hello World!"
  server = TCPServer.new(1234)
  
  while connection = server.accept
    while line = connection.gets
      break if line =~ /quit/
      puts line
      connection.puts "Received!"
    end
    
    connection.puts "Closing the connection. Bye!"
    connection.close
  end
