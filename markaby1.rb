#!/usr/bin/env ruby
require 'markaby'

m = Markaby::Builder.new

items = ['Bread', 'Butter', 'Tea', 'Coffee']

m.html do
  body do
    h1 'My Shopping List'
    ol do
      items.each do |item|
        li item
      end
    end
  end
end

f = File.new("markaby1.html", "w")

f.puts m

puts f.closed?
f.close
puts f.closed?