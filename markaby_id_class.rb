#!/usr/bin/env ruby
require 'markaby'

m = Markaby::Builder.new
m.html do
  div.posts! do
    div.entry do
      p.date Time.now.to_s
      p.content "Test entry 1"
    end
  
    div.entry do
      p.date Time.now.to_s
      p.content "Test entry 2"
    end
  end
end

File.open("markaby_id_class.html", "w") do |f|
  f.puts m
end
