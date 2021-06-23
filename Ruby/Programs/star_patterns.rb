#!/usr/bin/env ruby
print "Enter N : "
n=gets.to_i
print "Enter Type of pattern in terms of 1 , 2 , 3 or 4 :"
pattern=gets.to_i
def star1(n)
    i=1
    while i<=n do
        print("*"*i)
        print("\n")
        i=i+1
    end
end

def star2(n)
    i=1
    while i<=n do
        print(" "*(n-i))
        print("*"*i)
        print("\n")
        i=i+1
    end
end
    
def star3(n)
    i=1
    while i<=n do
        print(" "*(n-i))
        print("*"*(2*i-1))
        print("\n")
        i=i+1
    end
end
    
def star4(n)
    i=1
        while i<=n do
        print("*"*(2*n-(2*i-1)))
        print("\n")
        print(" "*i)
        i=i+1
    end
end

if pattern==1
    star1(n)

elsif pattern==2
    star2(n)
end

if pattern==3
    star3(n)

elsif pattern==4
    star4(n)
end
