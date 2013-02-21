f = File.new("test1.txt", "r+:utf-8")
f.seek(-5, IO::SEEK_END)
f.putc "X"
f.close
