#!/usr/bin/env ruby
require 'xmlrpc/server'
require 'string_extend'

server = XMLRPC::Server.new(12345)

server.add_handler("sample.vowel_count") do |string|
  string.vowels
end

trap("INT") { server.shutdown }
server.serve
