#!/usr/bin/env ruby
def str_frm_arr(a)
    arr=[]
    a.each do |i|
        if i.class=="b".class
            arr.push(i)
        end
    end
    return puts arr
end
a=[4,5,7,'Aayush','Isha','Rohini',89,23]
str_frm_arr(a)