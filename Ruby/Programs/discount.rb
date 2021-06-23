#!/usr/bin/env ruby
def disc(price,discount)
    amount=(price-((price*discount)/100))
    return amount
end
print "Enter price of Item : "
price=gets.to_i
print "Enter discount percentage : "
discount=gets.to_i
final_price=disc(price,discount)
puts "The Final Price of Item After Discount is #{final_price}"