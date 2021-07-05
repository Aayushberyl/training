class StudentController < ApplicationController
    def form
    end
    def show
        @student = Student.all
    end
end
