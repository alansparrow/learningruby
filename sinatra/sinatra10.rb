#!/usr/bin/env ruby
require 'rubygems'
require 'sinatra'

error do
  'Sorry there was a nasty error - ' + env['sinatra.error'].name
end

get '/divide/:a/:b' do |a, b|
  "#{a.to_i / b.to_i}"
end

error 403 do
  'Access forbidden'
end

get '/secret' do
  403
end
