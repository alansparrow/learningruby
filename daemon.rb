#!/usr/bin/env ruby
require 'socket'
def daemonize
  fork do
    Process.setsid
    exit if fork
    Dir.chdir('/')
    STDIN.reopen('/dev/null')
    STDOUT.reopen('/dev/null', 'a')
    STDERR.reopen('/dev/null', 'a')
    trap('TERM') { exit }
    yield
  end
end

daemonize do
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
end

puts "The daemon process has been launched!"
