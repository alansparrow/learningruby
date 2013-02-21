#!/usr/bin/env ruby
require 'rubygems'
require 'mechanize'

agent = Mechanize.new

page = agent.get('https://google.com')

gg_form = page.form('f')

puts gg_form.inspect

#puts page.inspect

#puts page.links

#page = agent.page.links_with(:text => 'home')[1].click

#puts page

#puts page
