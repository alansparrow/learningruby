#!/usr/bin/env ruby
require 'xmlrpc/server'

server = XMLRPC::Server.new(1234)
server.add_handler("sumAndDifference") do |a,b|
  { "sum" => a.to_i + b.to_i,
    "difference" => a.to_i - b.to_i }
end

trap("INT") { server.shutdown }
server.serve
