#!/usr/bin/env ruby
require 'redcloth'

text = <<THIS_IS_THE_END_OF_STRING
h1. This is a heading.

This is the first paragraph.

This is the second paragraph.

h1. Another heading

h2. A second level heading

Another paragraph
THIS_IS_THE_END_OF_STRING

document = RedCloth.new(text)
puts document.to_html

File.open("redcloth.html", "w") do |f|
  f.puts document.to_html
end
