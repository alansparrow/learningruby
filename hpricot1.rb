#!/usr/bin/env ruby
require 'rubygems'
require 'hpricot'
require 'open-uri'

html = <<END_OF_HTML
<html>
<head>
  <title>This is the page title</title>
</head>

<body>
  <h1>Big heading!</h1>
  <p>A paragraph of text</p>
  <ul><li>Item 1 in a list</li><li>Item 2</li><li class="highlighted">Item 3</li><li id="highlighted">Item 4</li></ul>
</body>
</html>
END_OF_HTML
doc = Hpricot(html)
list = doc.search("ul").first
#list.search("li").each do |item|
#  puts item.inner_html
#end

#list = doc.at("ul")
#highlighted_item = list.at("/.highlighted")
#puts highlighted_item.inner_html

list = doc.at("ul")
puts list
highlighted_id = list.at("/#highlighted")
puts highlighted_id.inner_html

