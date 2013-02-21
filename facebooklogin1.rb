require 'nokogiri'
require 'open-uri'

# Get a Nokogiri::HTML::Document for the page we’re interested in...

doc = Nokogiri::HTML(open('https://facebook.com'))

# Do funky things with it using Nokogiri::XML::Node methods...

####
# Search for nodes by css
puts doc.elements
