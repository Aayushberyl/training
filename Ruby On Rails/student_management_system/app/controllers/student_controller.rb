class StudentController < ApplicationController
	
	def form
		@student = Student.new
		@student.build_guardian
	end

	def temp1
		render :partial => 'subform' , layout: 'graybar'
	end

	def temp2
		render :partial => 'subform'
	end
	
	def show
		# stud = Student.find(2).name
		# StudentWorker.perform_async(stud)
    # @count = Student.count
		# @page_size = (@count.to_f/2).ceil
		# @page = params.fetch(:page, 0).to_i
    # @students = Student.offset(@page*2).limit(2).order(:id)
		
		
		# StudentWorker.perform_async("18-07-2021")
		# render text: "Request Successfully Initiated for Sidekiq from Joshi"
		@students = Student.paginate(page: params[:page] , per_page: 2).order(:id)
		
		# @pagy = pagy(Student.all)
		
		checkbox = params.fetch(:check ,0).to_i
    if checkbox > 0
      if Student.find(checkbox).active
        Student.find(checkbox).update(active: false)
				redirect_to '/student/show'
      else
        Student.find(checkbox).update(active: true)
				redirect_to '/student/show'
      end
		end
		
		id = params.fetch(:mail,0).to_i
		if id > 0
			@i = Student.find(id)
			begin
				StudentMailer.with(stud: @i).welcome_email.deliver
				stud = WelcomeEmailService.call(params[:name], params[:email])
				redirect_to "/student/show"
			rescue StandardError => e 
				flash[:error] = 'Problems sending email'
				end
		end
  end

	# def run

	# 	render text: "Request Successfully Initiated for Sidekiq from Joshi"
	
	# end

	def create
		
		# 	@student = Student.new(student_params) 
		# 	if @student.save
		# 		redirect_to '/student/show'
		# 	else
		#     render :form
	# 	end

	# end

		@student = CreateStudentService.new(student_params[:name], student_params[:age], student_params[:email] , student_params[:contact_no] , student_params[:enrolled_date] , student_params[:course_id] ).call
		# @student = Student.new(student_params)
		if @student.save
      redirect_to '/student/show'
    else
      # redirect_to '/student'
			render 'student/form'
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
		@student.update(name: params[:student][:name], age: params[:student][:age] , email: params[:student][:email] , contact_no: params[:student][:contact_no] , enrolled_date: params[:student][:enrolled_date] , course_id: params[:student][:course_id] , active: params[:student][:active])
		redirect_to '/student/show'
	end
	
	def destroy
		@student = Student.find(params[:id])
		@student.destroy
		redirect_to '/student/show'
	end

	def student_params
		params.require(:student).permit(:name, :age, :email, :contact_no,:enrolled_date, :course_id , guardian_attributes: [:name, :contact , :student_id])
	end


end
