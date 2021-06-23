#!/usr/bin/env ruby
def total_sales(arr,n)
	sum=0
  for j in 0...arr[0].length
    if arr[0][j] == n
      for k in 1 ... arr.length
				sum=sum+arr[k][j]
      end
    end
  end
  return sum
end
arr=[["A","B","C"],[2,7,1],[3,6,6],[4,5,5]]
puts "Total Sales of this product is #{total_sales(arr,"B")}"