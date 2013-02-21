#!/usr/bin/env ruby
require 'bluecloth'

markdown_text =<<END_OF_TEXT
This is a title
===========

Here is some _text_ that's formatted according to [Markdown][1]
*specification*. And how about a quote?

[1]: http://daringfireball.net/projects/markdown/

> This section is a quote.. a block quote
> more accurately..

Separate
======
> Second block..
> end.

Lists are also possible:

* Item 1
* Item 2
* Item 3
END_OF_TEXT

bluecloth_obj = BlueCloth.new(markdown_text)
puts bluecloth_obj.to_html

File.open('test.html', 'w') do |f|
  f.puts bluecloth_obj.to_html
end
