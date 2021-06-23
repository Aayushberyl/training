#!/usr/bin/env ruby

def initialize(name,age)
        @name=name
        @age=age
    end
    def disp(obj)
        puts "The Name and Age of person #{obj} is #{@name} , #{@age}"
    end
end
p1=Person.new("Samuel",24)
p2 = Person.new("Joel", 36)
p3 = Person.new("Lily", 24)
p1.disp(p2)
# p2.disp
# p3.disp