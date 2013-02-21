#!/usr/bin/env ruby
require 'sinatra'

get '/add/:a/:b/:c' do |a, b, c|
  (a.to_i + b.to_i + c.to_i).to_s
end
