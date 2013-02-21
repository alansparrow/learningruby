#!/usr/bin/env ruby
require 'ramaze'

class MyController < Ramaze::Controller
  map '/'
  
  def index
    return "Hello, Ramaze!"
  end
  
  def divide
    (request[:a].to_i / request[:b].to_i).to_s
  end
  
  def go_to
    redirect 'http://www.google.com.vn'
  end
end

Ramaze.start
