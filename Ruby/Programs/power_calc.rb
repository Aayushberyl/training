#!/usr/bin/env ruby
print("Enter Voltage : ")
v=gets.to_i
print("Enter Current : ")
i=gets.to_i
def power(volt,current)
    pow=volt*current
    puts("Power is #{pow} Watt")
end
power(v,i)