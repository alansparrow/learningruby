#!/usr/bin/env ruby
require 'resolv'

#puts Resolv.getaddress("www.amazon.com")

Resolv.each_address("www.amazon.com") do |ip|
  puts ip
end

ip = "210.251.121.214"

begin
  puts Resolv.getname(ip)
rescue
  puts "No hostname associated with #{ip}"
end
