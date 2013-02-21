#!/usr/bin/env ruby
eval "puts 2 + 2"
puts eval("2 + 2")
eval "2+2"

my_number = 15
my_code = %Q{#{my_number} * 2}
puts eval(my_code)