#!/usr/bin/env ruby
require 'sinatra'

get '/' do
  erb :index, :layout => :layout
end

post '/secretdata' do
  #redirect '/' if params[:password] != 'aaaa'
  halt [403, 'Fobidden'] if params[:password] != 'aaaa'
  erb :secretdata
end

__END__
@@ layout
  <html><head><title>My Secret App</title></head>
  <body><%= yield %></body></html>

@@ index
  <form method="POST" action="/secretdata">
  Password: <input type="text" name="password" />
  <input type="submit" value="Log in" />
  </form>
  
@@ secretdata
  Here's our secret data: <code>30'N 12'W</code>
