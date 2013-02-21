#!/usr/bin/env ruby
require 'rubygems'
require 'inline'
require 'benchmark'

class Fixnum
  def factorial
    (1..self).inject { |result, element| result * element }
  end
end

class CFactorial
    inline do |builder|
      builder.c %q{
        long factorial(int value) {
          long result = 1, i = 1;
          for (i = 1; i <= value; i++) {
            result *= i;
          }
          return result;
        }
      }
    end
end

t = CFactorial.new

Benchmark.bmbm do |bm|
  bm.report("Ruby:") do
    100000.times { 8.factorial }
  end
  
  bm.report("C:") do
    100000.times { t.factorial(8) }
  end
end
