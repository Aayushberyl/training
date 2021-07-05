class CourseController < ApplicationController
  def form
  end
  def show
    @course = Course.all
  end
end
