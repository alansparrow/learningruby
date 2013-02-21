#!/usr/bin/env ruby
require 'xmlrpc/client'

server = XMLRPC::Client.new2("http://www.rubyinside.com/book/xmlrpctest.cgi")
puts server.call("sample.sumAndDifference", 5, 3).inspect