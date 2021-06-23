#!/usr/bin/env ruby
def index_caps(s)
    (s.chars).each do |i|
        if (i.ord)>=65 and (i.ord)<=90
            puts i.ord
        end
    end
end
print "Enter String : "
s=gets
index_caps(s)