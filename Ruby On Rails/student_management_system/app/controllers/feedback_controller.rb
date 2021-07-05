class FeedbackController < ApplicationController
  def form
  end
  def show
    @feedback = Feedback.all
  end
end
