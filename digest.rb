#!/usr/bin/env ruby

require 'digest/sha2'


File.open('test.doc', 'r') do |f|
  $data = f.gets  
end
puts Digest::SHA2.hexdigest('password')