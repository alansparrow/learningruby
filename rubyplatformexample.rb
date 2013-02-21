#!/usr/bin/env ruby
puts RUBY_PLATFORM
ENV.each { |e| puts e.join(': ') }

ht = ENV.to_hash
puts ht['TMPDIR']