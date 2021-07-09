class FeedbackController < ApplicationController
  def form
    @feedback = Feedback.new
  end

  def show
    @feedbacks = Feedback.all
  end

  def create
    @feedback = Feedback.new(feedback_params) 
    if @feedback.save
      redirect_to '/feedback/show'
    else
      render :form
    end

  end
  def feedback_params
    params.require(:feedback).permit()
  end

end
