#!/usr/bin/env ruby
require 'net/ftp'

ftp = Net::FTP.new('ftp.ruby-lang.org')
ftp.passive = true
ftp.login
ftp.chdir('/pub/ruby/2.0')
file_size_downloaded = 0
start_time = Time.now
file_size = ftp.size('ruby-2.0.0-rc1.tar.gz')
ftp.getbinaryfile('ruby-2.0.0-rc1.tar.gz', 'ruby2/abc1.tar.gz', 200000) do |blk|
  puts "#{file_size_downloaded * 100 / file_size} % of the file has been downloaded!"
  file_size_downloaded += blk.size
end
puts file_size
puts "Downloaded in: #{Time.now - start_time} s"