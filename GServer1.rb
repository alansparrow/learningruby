#!/usr/bin/env ruby
require 'gserver'

class HelloServer < GServer
  def serve(io)
    io.puts "To stop this server, type 'shutdown'"
    self.stop if io.gets =~ /shutdown/
  end
end

if GServer.in_service?(1234)
  puts "Can't create new server. Already running!"
else
  puts  "New server on 1234!"
  server = HelloServer.new(1234)
  server.start
end

if GServer.in_service?(1234)
  puts "Can't create new server. Already running!"
else
  server = HelloServer.new(1234)
  server.start
end


loop do
  break if server.stopped?
end

puts "Server has been terminated!"

