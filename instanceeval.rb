#!/usr/bin/env ruby
class MyClass
  def initialize
    @my_variable = 'Hello, World!'
  end
end

obj = MyClass.new
obj.instance_eval { puts @my_variable }
