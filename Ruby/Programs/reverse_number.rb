#!/usr/bin/env ruby
puts "Enter a number to reverse : "
n=gets.to_i
rev=0
while n>0 do
    rev=rev*10 + n%10
    n=n/10
    n=n.to_i
end
puts rev