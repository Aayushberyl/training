#!/usr/bin/env ruby
aFile = File.new("input.txt", "r+")
if aFile
   aFile.syswrite("ABCDEF\n")
else
   puts "Unable to open file!"
end
