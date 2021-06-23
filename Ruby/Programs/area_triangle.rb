#!/usr/bin/env ruby
def area(base,height)
    return puts "Area of Triangle is #{(base*height)/2}"
end
print "Enter base of Triangle : "
base=gets.to_i
print "Enter Height of Triangle :"
height=gets.to_i
area(base,height)