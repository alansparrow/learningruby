#!/usr/bin/env ruby
require 'gserver'

class HelloServer < GServer
  def serve(io)
    io.puts "Hello!"
    puts "Sent!"
  end
end

server = HelloServer.new(1234)
server.start
server.join
