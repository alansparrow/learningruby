#!/usr/bin/env ruby
require 'net/ftp'

ftp = Net::FTP.new('192.168.123.189')
ftp.passive = true
ftp.login
ftp.chdir('myfile')

count = 0

ftp.putbinaryfile('/Users/baotrungtn/Downloads/IPTD-813/IPTD-813.avi', 'movie.avi', 100000) do |blk|
  count += 100000
  puts "#{count} bytes uploaded"
end

ftp.close
