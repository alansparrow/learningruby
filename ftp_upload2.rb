#!/usr/bin/env ruby
require 'net/ftp'
require 'tempfile'

tempfile = Tempfile.new('test.txt')

my_data = "This is some text data I want to upload via FTP."
tempfile.puts my_data


#puts tempfile.readlines
#puts File.exists?(tempfile)
File.open(tempfile.path) do |f|
  puts f.read
end


ftp = Net::FTP.new('192.168.123.189')
ftp.passive = true
ftp.login
ftp.chdir('myfile')

begin
  ftp.puttextfile(tempfile.path, 'my_data')
  puts "File was uploaded!"
rescue => e
  puts e.to_s  
end

ftp.close
tempfile.close