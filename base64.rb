#!/usr/bin/env ruby
require 'base64'
#puts Base64.encode64('testing')

#puts Base64.encode64(File.read('/bin/bash'))

puts Base64.decode64(Base64.encode64('testing'))