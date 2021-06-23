#!/usr/bin/env ruby
def probability(a,n)
    count=0
    for i in 0...(a.size)
        if a[i]<=n
            count+=1
        end
    end
    return puts "Probability of selecting number less than #{n} is #{(count.to_f/a.size) *100}%"
end
a=[8,10,22,34,78,11,45]
print "Enter N : "
n=gets.to_i
probability(a,n)