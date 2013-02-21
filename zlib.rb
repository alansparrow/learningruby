#!/usr/bin/env ruby
require 'base64'
require 'zlib'

module Base64
  def Base64.new_encode64(data)
    encode64(Zlib::Deflate.deflate(data))
  end
  
  def Base64.new_decode64(data)
    Zlib::Inflate.inflate(decode64(data))
  end
end

test_data = 'this is a test' * 100

data = Base64.encode64(test_data)
puts "The uncompressed data is #{data.length} bytes long in Base64"

data = Base64.new_encode64(test_data)
puts "The compressed data is #{data.length} bytes long in Base64"

puts "The uncompressed data is #{Base64::new_decode64(data)}"
#puts "The decode data is: #{Zlib::Inflate.inflate(Base64.decode64(data))}"
