<<<<<<< HEAD
#!/usr/bin/env ruby
=======
>>>>>>> 50d869793171a02730dbc67fe8e4e4895f31239a
module Play
    def cricket
        puts "Go and Play Cricket...I am in Play Module and cricket method"
    end
    def volleyball
        puts "Go and Play Volleyball...I am in Play Module and volleyball method"
    end
end

module Study
    def tutorials
        puts "I learn through tutorials...I am in Study Module and tutorials method"
    end
    def books
        puts "I learn through books...I am in Study Module and books method"
    end
end

class Student
    include Play
    include Study

    def stud
        puts "I am student in Student class and stud method"
    end
end

s1 = Student.new
s1.cricket
s1.volleyball
s1.tutorials
s1.books
s1.stud