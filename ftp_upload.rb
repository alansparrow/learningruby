#!/usr/bin/env ruby
require 'net/ftp'
require 'open-uri'

ftp = Net::FTP.new('192.168.123.189')
#ftp.passive = true
ftp.login
ftp.chdir('myfile')
ftp.list('*') { |file| puts file }
ftp.putbinaryfile('analyzer.rb')
ftp.getbinaryfile('analyzer.rb', 'a.txt')
ftp.close

