class MyFile
  attr_reader :handle
  
  def initialize(filename)
    if File.exist?(filename)
      @handle = File.new(filename, "r")
    else
      puts "There is no file"
      raise RuntimeError, "There is no file"
      return false
    end 
  end
end

myfile = MyFile.new("test1.txdt")