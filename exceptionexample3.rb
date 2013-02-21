class Test
  def divide(v)
    begin
      puts v / 0
    rescue
      puts "Rescued!"
    end
    puts "Out!"
  end
end

myobject = Test.new
myobject.divide(10)
