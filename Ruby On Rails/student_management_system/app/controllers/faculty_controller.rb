class FacultyController < ApplicationController
  def form
  end
  def show
    @faculties = Faculty.all
  end
end
