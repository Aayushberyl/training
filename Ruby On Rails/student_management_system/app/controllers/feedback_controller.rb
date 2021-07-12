class FeedbackController < ApplicationController
  def form
    @feedback = Feedback.new
  end

  def show
    @feedbacks = Feedback.all
  end

  def create
    @feedback = Feedback.new(params_feedback) 
    if @feedback.save
      redirect_to '/feedback/show'
    else
      render :form
    end
  end

  def edit
    @feedback = Feedback.find(params[:id])
  end

  def update
    @feedback = Feedback.find(params[:id])
    @feedback.update(content: params[:feedback][:content] , comments_id: params[:feedback][:comments_id] , comments_type: params[:feedback][:comments_type])
    redirect_to '/feedback/show'
  end

  def destroy
    @feedback = Feedback.find(params[:id])
    @feedback.destroy
    redirect_to '/feedback/show'
  end

  def params_feedback
    params.require(:feedback).permit(:comments_id , :comments_type , :content)
  end

end
