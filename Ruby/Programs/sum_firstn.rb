#!/usr/bin/env ruby
def sum_firstn(a,n)
    sum=0
    for i in 0...n
        sum=sum+a[i]
    end
    return puts "Sum of first #{n} elements is #{sum}"
end
a=[8,10,22,34,78,11,45]
print "Enter to find sum upto : "
n=gets.to_i
sum_firstn(a,n)