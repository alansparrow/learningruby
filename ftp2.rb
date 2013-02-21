#!/usr/bin/env ruby
require 'net/ftp'

ftp = Net::FTP.new('ftp.ruby-lang.org')
ftp.passive = true
ftp.login 'anonymous', 'me@privacy.net'
ftp.chdir('pub/ruby')
#ftp.mkdir('test') no permission
ftp.delete('ruby-1.8.6-p420.tar.bz2')
ftp.list('*') { |file| puts file }
ftp.close