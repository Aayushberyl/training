#!/usr/bin/env ruby
def sort_str(s)
    a=Array.new
    c=Array.new
    arr=s.split(" ")
    # print arr
    arr.each do |i|
        a=a.push(i.reverse)
    end
    b=a.sort()
    # print ("\n")
    # print b
    b.each do |i|
        c=c.push(i.reverse)
    end
    # print("\n")
    # print c
    # print("\n")
   return puts(c.join(" "))
end
print "Enter String to sort by last character : "
s=gets
sort_str(s)