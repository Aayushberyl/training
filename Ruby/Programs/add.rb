#!/usr/bin/env ruby
puts "Hello! World!"
puts "addition of 1 + 2 is #{3}"
for i in 1..10
puts i
end

puts 2e+10 # prints 20000000000

puts (1..10)===5 # Used to test equality within a when clause of a case statement.
 puts 1.eql?(1.0) # True if the receiver and argument have both the same type and equal values.

# a= 1100
# b= 1010
# puts c=a|b

 a    =  60
 b    =  13

puts a>50?"Yes A is greater than 50 by #{a-50}" : "No A is less than 50"
puts a|b
puts a&b

# CREATING A CLASS

class Employee
	@@emp_salary=40000
	def emp_details(name,age,profile)
		@emp_name=name
		@emp_age=age
		@emp_profile=profile
	end
	def print_details
		puts "Name of the Employee is #{@emp_name}"
		puts "Age of the Employee is #{@emp_age}"
		puts "Profile of the Employee is #{@emp_profile}"
		puts "Salary of the Employee is #{@@emp_salary}"
	end
end

e1=Employee.new
e1.emp_details('Honey',25,'Software Developer')
e1.print_details



