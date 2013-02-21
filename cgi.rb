#!/usr/bin/env ruby
require 'cgi'

cgi = CGI.new

puts cgi.header
puts "<html><body>This is a test</body></html>"