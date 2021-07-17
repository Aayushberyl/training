class StudentMailer < ApplicationMailer

  def welcome_email
    @stud = Student.find(params[:stud][:id])

    mail(to: @stud.email , subject: "You got a new mail!")
    

  end
    
end
