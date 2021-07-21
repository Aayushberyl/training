class CreateStudentService
  attr_reader :name, :age, :email, :contact_no,:enrolled_date, :course_id

  def initialize(name, age, email, contact_no,enrolled_date, course_id  )
    @name = name
    @age = age
    @email = email
    @contact_no = contact_no
    @enrolled_date = enrolled_date
    @course_id = course_id
  end

  def call
    Student.create(name: @name , age: @age , email: @email , contact_no: @contact_no , enrolled_date: @enrolled_date , course_id: @course_id )
  end

end