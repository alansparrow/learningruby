require 'tmpdir'
tempfilename = File.join(Dir.tmpdir, "myapp.txt")
tempfile = File.new(tempfilename, "w")
tempfile.puts "This is only temporary"
tempfile.close
File.delete(tempfilename)
puts tempfile.path
