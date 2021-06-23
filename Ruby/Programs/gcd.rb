#!/usr/bin/env ruby
def gcd(num1,num2)
    if num1==0
        return puts num2
    elsif num2==0
        return puts num1
    elsif num1==num2
        return puts num1
    elsif num1>num2
        return puts gcd(num1-num2,num2)
    else
        return puts gcd(num1,num2-num1)
    end
end
gcd(14,26)