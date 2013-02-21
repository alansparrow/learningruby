#!/usr/bin/env ruby
#!/usr/bin/env ruby
require 'net/ftp'
require 'tmpdir'

tempfilename = File.join(Dir.tmpdir, "my_data.txt")
tempfile = File.new(tempfilename, "w")
tempfile.puts "This is a test text."
tempfile.close


ftp = Net::FTP.new('192.168.123.189')
ftp.passive = true
ftp.login
ftp.chdir('myfile')

begin
  ftp.puttextfile(tempfilename, 'my_data')
  puts "File was uploaded!"
rescue => e
  puts e.to_s  
end

ftp.close
puts tempfilename
File.delete(tempfilename)