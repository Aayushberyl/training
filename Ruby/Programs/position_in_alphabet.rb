#!/usr/bin/env ruby
def pos_alpha(n)
    a=n+96
    if n>26 or n<=0 or n=="a".class
        return puts "invalid"
    else
        puts "#{a.chr}"
    end
end
print "Enter N : "
n=gets.to_i
pos_alpha(n)