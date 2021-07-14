class FacultyController < ApplicationController
  def form
    @faculty = Faculty.new
  end
  
  def show
    @faculties = Faculty.all	
  end

  def create
    @faculty = Faculty.new(faculty_params) 
    if @faculty.save
      redirect_to '/faculty/show'
    else
      render :form
    end
  end

  def edit
		@faculty = Faculty.find(params[:id])
	end

	def update
		@faculty = Faculty.find(params[:id])
		@faculty.update(name: params[:faculty][:name], course_id: params[:faculty][:course_id], salary: params[:faculty][:salary])
		redirect_to '/faculty/show'
	end
	
	def destroy
		@faculty = Faculty.find(params[:id])
		@faculty.destroy
		redirect_to '/faculty/show'
	end
  
  def faculty_params
    params.require(:faculty).permit(:name, :salary , :course_id)
  end

end
