#!/usr/bin/env ruby
puts [1, 2, 3, 4].inject(0) { |result, element| result + element }
puts [1, 2, 3, 4].inject { |result, element| result + element }