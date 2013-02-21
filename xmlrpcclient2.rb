require 'xmlrpc/client'

server = XMLRPC::Client.new2("http://localhost:1234")
puts server.call("sample.some_method")