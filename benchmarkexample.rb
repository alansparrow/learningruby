require 'benchmark'
puts Benchmark.measure { 10000.times { print "."} }
