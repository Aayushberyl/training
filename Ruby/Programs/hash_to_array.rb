#!/usr/bin/env ruby
def hash_to_array(hash)
    arr=[]
    i=0
    hash.each do |pair|
        arr[i]<<[k]
    end
    return puts arr
end
hash={"H"=> 1, "e"=> 1, "l"=> 3, "o"=> 2, "W"=> 1, "r"=> 1, "d"=> 1}
# hash_to_array(hash)
print hash.to_a
