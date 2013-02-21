#!/usr/bin/env ruby
require 'net/ftp'

ftp = Net::FTP.new('ftp.ruby-lang.org')
ftp.passive = true
ftp.login
ftp.chdir('/pub/ruby/1.8')
ftp.list('*') { |file| puts file }
ftp.getbinaryfile('1.8.2-patch1.gz')
ftp.close