#!/usr/bin/env ruby
begin
    file = open("file22.csv")
       raise "File opened successfully"
rescue Exception =>e
    puts e.message
    # puts e.backtrace.inspect
ensure
    puts "This shows that program is in running condition means exception is handled"
end