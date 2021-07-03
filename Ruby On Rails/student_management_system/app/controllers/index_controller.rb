class IndexController < ApplicationController
  def nav
    @student = 'Student'
    @guardian = 'Guardian'
    @certification = 'Certifications'
    @certified = 'Certified'
    @course = 'Course'
    @faculty = 'Faculties'
    @feedback = 'Feedback'
  end
end
