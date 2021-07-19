class CourseController < ApplicationController
  
  def form
    @course = Course.new
  end

  def show
    @courses = Course.all
  end

  def create
    @course = Course.new(course_params)
    # course = Course.new(course_params)
    
    if @course.save
      cid = @course.id
      CourseWorker.perform_async(cid)
      redirect_to '/course/show'
    else
      render :form
    end
  end

  def edit
		@course = Course.find(params[:id])
	end

	def update
		@course = Course.find(params[:id])
		@course.update(name: params[:course][:name], fees: params[:course][:fees] , duration: params[:course][:duration])
		redirect_to '/course/show'
	end
	
	def destroy
		@course = Course.find(params[:id])
		@course.destroy
		redirect_to '/course/show'
	end

  def course_params
    params.require(:course).permit(:name , :fees , :duration)
  end

end
