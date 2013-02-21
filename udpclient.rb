#!/usr/bin/env ruby
require 'socket'

s = UDPSocket.new
51.times do
  s.send("hello", 0, 'localhost', 1234)
end