#!/usr/bin/env ruby
require 'drb/drb'

URI = "druby://localhost:8787"

class TimeServer
  def get_current_time
    return Time.now
  end
end

FRONT_OBJECT = TimeServer.new

$SAFE = 1

DRb.start_service(URI, FRONT_OBJECT)

DRb.thread.join
