#!/usr/bin/env ruby
require 'drb/drb'

# The URI to connect to
SERVER_URI = "druby://ec2-54-251-5-74.ap-southeast-1.compute.amazonaws.com:8787"

# Start a local DRbServer to handle callbacks
#
# Not necessary for this small example, but will be required
# as soon as we pass a non-marshallable object as an argument
# to a dRuby call.

DRb.start_service

timeserver = DRbObject.new_with_uri(SERVER_URI)

check = true
while check == true
  puts timeserver.get_current_time("PC5-0.001")
  sleep 0.001
end
