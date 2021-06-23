#!/usr/bin/env ruby
def anagram(s1,s2)
    if s1.length==s2.length
        if s1.downcase.chars.sort.join==s2.downcase.chars.sort.join
            puts "String is a Anagram"
        else
            puts "Not an Anagram"
        end
    else
        puts "Not an Anagram"
    end
end
print "Enter string 1 : "
s1=gets
print "Enter string 2 : "
s2=gets
anagram(s1,s2)