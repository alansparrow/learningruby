#!/usr/bin/env ruby
thread1 = Thread.new do
  10.times { |i| puts i.to_s + " from thread 1!" ; sleep 2}
end

thread2 = Thread.new do
  10.times { |i| puts i.to_s + " from thread 2!" ; sleep 3}
end

#thread2.join
