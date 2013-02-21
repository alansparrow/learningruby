require 'net/ping'

#p = Net::Ping::External.new('www.google.com')
#p.port = 8080
#if p.ping
#  puts "Pong!"
#else
#  puts "No response!"
#end

if Net::Ping::TCP.new('www.google.com', 90).ping
  puts "Pong!"
else
  puts "No response!"
end
