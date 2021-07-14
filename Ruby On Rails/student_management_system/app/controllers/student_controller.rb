class StudentController < ApplicationController
    
	def form
		@student = Student.new
	end
		
	def show
		
    @count = Student.count
		@page_size = (@count.to_f/2).ceil
		@page = params.fetch(:page, 0).to_i
    @students = Student.offset(@page*2).limit(2)	
		
		id = params.fetch(:mail,0).to_i
		if id > 0
			@i = Student.find(id)
			# begin
				StudentMailer.with(stud: @i).welcome_email.deliver
				redirect_to "/student/show"
			# rescue StandardError => e 
				# flash[:error] = 'Problems sending email'
			# end
		end
  end

	def create

		@student = Student.new(student_params) 
		if @student.save
			redirect_to '/student/show'
		else
      render :form
		end

	end

	# def run
	# 	params.fetch(:stud)
	# 		StudentMailer.with(stud: student).welcome_email.deliver_now
	# 	end
	# end

	def edit
		@student = Student.find(params[:id])
	end

	def update
		@student = Student.find(params[:id])
		@student.update(name: params[:student][:name], age: params[:student][:age] , email: params[:student][:email] , contact_no: params[:student][:contact_no] , enrolled_date: params[:student][:enrolled_date] , course_id: params[:student][:course_id])
		redirect_to '/student/show'
	end
	
	def destroy
		@student = Student.find(params[:id])
		@student.destroy
		redirect_to '/student/show'
	end

	def student_params
		params.require(:student).permit(:name, :age, :email, :contact_no,:enrolled_date, :course_id)
	end
end
