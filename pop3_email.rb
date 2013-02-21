#!/usr/bin/env ruby
require 'net/pop'

username = 'ngoclanvinaphone@gmail.com'
password = 'baotrung'

Net::POP3.enable_ssl(OpenSSL::SSL::VERIFY_NONE)
mail_server = Net::POP3.new('pop.gmail.com', 995)
mail_server.start(username, password)
  if mail_server.mails.empty?
    puts 'No mail!'
  else
    mail_server.mails.each do |mail|
      m = mail.pop
      puts m
    end
    #pop.each_mail do |mail|
    #  p mail.header
    #end
end

