#!/usr/bin/env ruby
begin
    a=[1,2,3,4,5]
    puts "give index to access array"
    i=gets.to_i
    
    if i<a.length
        puts "Element at #{i}th index is #{a[i]}"
    else
        puts "You are accessing index out of range"
    end
    
    
    puts "Enter dividend : "
    a=gets.to_i
    puts "Enter divisor : "
    b=gets.to_i
    c=a.to_f/b

    # Here i used rescue statements to let program run even if a error is raised

rescue ZeroDivisionError 
    puts "You cannot divide any number by 0."
    
rescue TypeError
    puts "can't take string as an array index"
    
else  
    puts "The division of #{a}/#{b} is #{c.round(2)} and yields remainder #{a%b}"
    
ensure
    puts "This is the ensure statement even if program raises an exception this will be executed.."
end
