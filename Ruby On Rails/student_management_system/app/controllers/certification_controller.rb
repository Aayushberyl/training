class CertificationController < ApplicationController
  def form
    @certification = Certification.new
  end

  def show
    @certifications = Certification.all
  end

  def create
    @certification = Certification.new(params_certification)
    if @certification.save
      redirect_to '/certification/show'
    else
      render :form
    end
  end

  def edit
    @certification = Certification.find(params[:id])
  end

  def update
    @certification = Certification.find(params[:id])
    @certification.update(name: params[:certification][:name], fees: params[:certification][:fees] , duration: params[:certification][:duration])
    redirect_to '/certification/show'
  end

  def destroy
    @certification = Certification.find(params[:id])
    @certification.destroy
    redirect_to '/certification/show'
  end

  def params_certification
    params.require(:certification).permit(:name , :fees , :duration)
  end

end
