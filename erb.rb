#!/usr/bin/env ruby
require 'erb'

template = <<EOF
<% 1.upto(5) do |i| %>
  <p>This is iteration <%= i %></p>
<% end %>
EOF

puts ERB.new(template).result
ERB.new(template).run

puts "================================="
array_of_stuff = %w{this is a test}

template = <<EOF
<% array_of_stuff.each_with_index do |item, index| %>
  <p>Item <%= index %>: <%= item %></p>
<% end %>
EOF

puts ERB.new(template).result
puts "================================="
template = <<EOF
Let's try to do something crazy like access the filesystem..
<%= `ls` %>
EOF

puts ERB.new(template, 1).result