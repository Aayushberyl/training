#!/usr/bin/env ruby
def diagonal(volume)
    side=Math.cbrt(volume)
    return diag=(1.732*side).round(2)
end
print("Enter Volume of cube : ")
volume=gets.to_f
puts diagonal(volume)