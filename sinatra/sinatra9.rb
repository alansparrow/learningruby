#!/usr/bin/env ruby
require 'sinatra'

not_found do
  erb :file_not_found
end

__END__

@@ file_not_found
  <html><body>File not found!</body></html>