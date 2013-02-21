#!/usr/bin/env ruby
#encoding: UTF-8
require 'net/pop'

username = 'ngoclanvinaphone@gmail.com'
password = 'baotrung'

Net::POP3.enable_ssl(OpenSSL::SSL::VERIFY_NONE)
mail_server = Net::POP3.new('pop.gmail.com', 995)
mail_server.start(username, password)

if mail_server.mails.empty?
  puts 'No mail!'
else
  mail_server.mails.each do |m|
    puts m.header
    m.delete
    puts "Deleted!"
  end
end
