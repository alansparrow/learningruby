#!/usr/bin/env ruby
require 'xmlrpc/client'

server = XMLRPC::Client.new2("http://localhost:12345")
puts server.call("sample.vowel_count", "This is a test. This is another test. I live you.").inspect