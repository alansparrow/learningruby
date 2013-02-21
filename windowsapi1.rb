#!/usr/bin/env ruby
require 'Win32API'
title = "My Application"
text = "Hello, World!"

dialog = Win32API.new('user32', 'MessageBox', 'LPPL', 'I')
result = dialog.call(0, text, title, 5)

case result
when 1
  puts "Clicked OK"
when 2
  puts "Clicked Cancel"
else
  puts "Clicked something else!"
end
