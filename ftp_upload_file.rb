#!/usr/bin/env ruby
require 'net/ftp'

connection =  Net::FTP.new
#puts connection.methods
ftp = Net::FTP.new('ec2-54-251-5-74.ap-southeast-1.compute.amazonaws.com')
ftp.passive = true
ftp.login
#ftp.chdir
ftp.list('*') do |file|
  puts file
end
