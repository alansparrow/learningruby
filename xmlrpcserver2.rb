#!/usr/bin/env ruby
class ClassClass
  def self.test_method
    "Some test text with class method!"
  end
end
class OurClass
  def some_method
    #"Some test text with object method!"
    ClassClass.test_method
  end
end

require 'xmlrpc/server'

server = XMLRPC::Server.new(1234)
server.add_handler(XMLRPC::iPIMethods('sample'), OurClass.new)

trap("INT") { server.shutdown }
server.serve
