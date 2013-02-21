#!/usr/bin/env ruby
class Test
  $test_var0 = 10
  def initialize(var)
    $test_var = var
  end
  
  def get_var
    $test_var
  end
  
  def set_var=(var)
    $test_var = var
  end
end

t = Test.new(10)
puts t.get_var
