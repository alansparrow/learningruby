#Dir.mkdir("mynewdir")
#Dir.mkdir("/mynewrootdir")
path = "newdir"
10.times do
  Dir.mkdir(path, 0777)
  path += "/newdir"
end