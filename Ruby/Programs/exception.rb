#!/usr/bin/env ruby
puts "Enter first number : "
a=gets.to_i
puts "Enter second number : "
b=gets.to_i
begin
   puts a.fdiv(b)
end
if b==0        
    puts "Divide By Zero Error"
end