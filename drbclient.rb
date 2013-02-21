require 'drb'

remote_object = DRbObject.new nil, 'druby://trans-mac-mini.local:59124'
puts remote_object.some_method
