#!/usr/bin/env ruby
require 'net/telnet'

server = Net::Telnet::new('Host' => 'www.rubyinside.com', 'Port' => 80, 'Telnetmode' => false)

server.cmd("GET /test.txt HTTP/1.1\nHost: www.rubyinside.com\n") do |response|
  puts response
end
