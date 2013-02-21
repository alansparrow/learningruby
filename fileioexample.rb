class MyFile
  attr_reader :handle
  
  def initialize(filename)
    @handle = File.new(filename, "r")
  end
  
  def finished
    @handle.close
  end
end

f = MyFile.new("test.txt")
puts f.handle.gets
f.finished
