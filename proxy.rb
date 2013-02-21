#!/usr/bin/env ruby
require 'net/http'

web_proxy = Net::HTTP::Proxy('211.142.236.137', 8080)

url = URI.parse('http://www.rubyinside.com/test.txt')

web_proxy.start(url.host, url.port) do |http|
  req = Net::HTTP::Get.new(url.path)
  #puts http.request(req).body
end

web_proxy = Net::HTTP::Proxy('118.97.206.146', 8080)

url = URI.parse('http://www.rubyinside.com/test.txt')

response = web_proxy.get_response(url)
puts response.body