class GuardianController < ApplicationController
  def form
    @guardian = Guardian.new
  end
  
  def show
    @guardians = Guardian.all	
  end

  def create
    @guardian = Guardian.new(guardian_params) 
    if @guardian.save
      redirect_to '/guardian/show'
    else
      render :form
    end
  end

	def edit
		@guardian = Guardian.find(params[:id])
	end

	def update
		@guardian = Guardian.find(params[:id])
		@guardian.update(name: params[:guardian][:name], contact: params[:guardian][:contact] , student_id: params[:guardian][:student_id])
		redirect_to '/guardian/show'
	end
	
	def destroy
		@guardian = Guardian.find(params[:id])
		@guardian.destroy
		redirect_to '/guardian/show'
	end
  
  def guardian_params
    params.require(:guardian).permit(:name, :contact, :student_id)
  end

end
