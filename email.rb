#!/usr/bin/env ruby
require 'resolv'
require 'net/smtp'

from = 'lalala@gmail.com'
to = 'baotrungtn@me.com'

message = <<MESSAGE_END
From: #{from}
To: #{to}
Subject: Direct email test

This is a test email message.
MESSAGE_END

to_domain = to.match(/\@(.+)/)[1]

Resolv::DNS.open do |dns|
  mail_servers = dns.getresources(to_domain, Resolv::DNS::Resource::IN::MX)
  mail_server = mail_servers[rand(mail_servers.size)].exchange.to_s
  
  Net::SMTP.start(mail_server) do |smtp|
    smtp.send_message message, from, to
  end
end
