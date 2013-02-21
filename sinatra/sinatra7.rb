#!/usr/bin/env ruby
require 'sinatra'
set :views, settings.root + '/views_test'
set :public, settings.root + '/css'
before do
  @people = [
    { :name => "Beatrice", :age => 20 },
    { :name => "Eugenie", :age => 18 },
    { :name => "Louise", :age => 6 }
  ]
end

get '/' do
  erb :index
end