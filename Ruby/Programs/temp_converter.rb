#!/usr/bin/env ruby
def temp_converter(unit,temp)
    if unit=="F" or "f"
        return temp_F=9.fdiv(5)*temp + 32
    elsif unit=="C" or "c"
        return temp_C=5.fdiv(9)*(temp-32)
    end
end
print("Enter Temperature in Celsius or Fahrenheit : ")
temp=gets.to_f
print("Enter unit in which you want to convert in f or c : ")
unit=gets
puts temp_converter(unit,temp)