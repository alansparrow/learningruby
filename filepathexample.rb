puts File.join('full', 'path', 'here', 'filename.txt')
puts File.join(File::SEPARATOR, 'full', 'path', 'here', 'filename.txt')
puts File.expand_path("test.txt")