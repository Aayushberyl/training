#!/usr/bin/env ruby
print "Enter N : "
n=gets.to_i
while n>0
    a=n%10
    n=n/10
    print ("*"*a)
    print("\n")
    # print ("*"*n)
    # print("\n")
end