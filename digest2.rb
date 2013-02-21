#!/usr/bin/env ruby
require 'digest/sha2'

Digest::SHA2.digest('test' * 10000).each_byte do |byte|
  print byte, "-"
end
