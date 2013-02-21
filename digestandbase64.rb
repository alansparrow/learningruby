#!/usr/bin/env ruby
require 'base64'
require 'digest/sha2'

puts Digest::SHA2.hexdigest('test')
puts Base64.encode64(Digest::SHA2.hexdigest('test'))