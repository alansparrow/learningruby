#!/usr/bin/env ruby
require 'markaby'

m = Markaby::Builder.new

m.html do
  head { title 'This is the title' }
  
  body do
    h1 'Hello World!'
    h2 'Sub-heading'
    p %q{This is a pile of stuff showing off Markaby's features }
    h2 'Another sub-heading'
    p 'Markaby is good at:'
    ul do
      li 'Generating HTML from Ruby'
      li 'Keeping HTML structured'
      li 'Lots more...'
    end
  end
end

puts m

File.open("markaby.html", "w") do |f|
  f.puts m
  puts f.closed?
end
