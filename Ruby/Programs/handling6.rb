#!/usr/bin/env ruby
if File.rename( "test1.txt", "test2.txt" )
	puts "Renamed Successfully"
else
	puts "File does not exists"
end
