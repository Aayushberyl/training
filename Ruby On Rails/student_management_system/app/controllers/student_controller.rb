class StudentController < ApplicationController
    def form
			@student = Student.new
		end

    def show
      @students = Student.all	
    end

		def create
			@student = Student.new(student_params) 
			if @student.save
				redirect_to '/show_student'
			else
        render :form
			end

		end
		def student_params
			params.require(:student).permit(:name, :age, :email, :contact_no,:enrolled_date, :course_id)
		end
end
