#!/usr/bin/env ruby
require 'feedzirra'

feed = Feedzirra::Feed.fetch_and_parse('http://www.rubyinside.com/feed/')

puts "This feed's title is #{feed.title}"
puts "This feed's Web site is at #{feed.url}"

count = 0
feed.entries.each do |item|
  break if count == 1
  puts item.title + "\n---\n" + item.summary + "\n\n"
  File.open("feed.html", "w") do |f|
    f.puts item.summary
  end
  count += 1
end
