#!/usr/bin/env ruby
def oddup_evendown(arr,n)
    a=[]
    arr.each do |k|
        if k.even?
            k=k-2*n
        else
            k=k+2*n
        end
        a.push(k)
    end
    return a
end
print "Enter array : "
arr=[]
for i in 0...5
    j=gets.to_i
    arr.push(j)
end
print "Enter N : "
n=gets.to_i
print oddup_evendown(arr,n)
print("\n")