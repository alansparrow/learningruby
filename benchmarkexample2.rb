require 'benchmark'
iterations = 1000000

Benchmark.bmbm do |bmbm|
  bmbm.report("for:") do
    for i in 1..iterations do
      x = i
    end
  end
  
  bmbm.report("times:") do
    iterations.times do |i|
      x = i
    end
  end
end
