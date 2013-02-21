#!/usr/bin/env ruby
require 'net/http'
require 'net/https'

url = URI.parse('https://example.com')

http = Net::HTTP.new(url.host, url.port)
if url.scheme == 'https'
  http.use_ssl = true
  puts "https!"
end

request = Net::HTTP::Get.new(url.path)
puts http.request(request).body