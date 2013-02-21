require 'benchmark'
iterations = 1000000

b = Benchmark.measure do
  for i in 1..iterations do #from 1 to iterations
    x = i
  end
end

c = Benchmark.measure do
  iterations.times do |i|
    x = i
  end
end

puts b
puts c
