#!/usr/bin/env ruby
require 'xmlrpc/client'

server = XMLRPC::Client.new2("http://localhost:1234")
ok, results = server.call2("sumAndDifference", 5, 31)
puts server.call2("sumAndDifference", 5, 3)
if ok
  puts results.inspect
else
  puts results.faultCode
  puts results.faultString
end
