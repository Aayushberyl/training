#!/usr/bin/env ruby
def make_hash(string)
    hash={}
    string.each_char do |i|
        if hash.include?(i)
            hash[i]=hash[i]+1
        else
            hash.store(i,1)
        end
    end
    return hash
end
def is_palindrome(string)
    hash=make_hash(string)
    odd = 0
    if string.length%2 != 0
        hash.each do |k,v|
            if v%2 != 0
                odd = odd+1
            end
        end
        if odd == 1
            puts "True"
        else
            puts "False"
        end
    else
        puts "even"
        hash.each do |k,v|
            if v%2 != 0
                odd = odd+1
            end
        end
        if odd > 0
            puts "False"
        end
    end
end
is_palindrome("aabbc")