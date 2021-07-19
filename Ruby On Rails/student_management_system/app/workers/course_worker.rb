class CourseWorker
  include Sidekiq::Worker

  def perform(cid)
    # Do something
    puts "Go Now ! Hey Sidekiq Server is Running @"
    stud = Student.create(name: 'Pranjal' , age:23 , email:"pranjal@gmail.com" , contact_no:9988554433 , enrolled_date: Date.parse("17/07/2021") , course_id: cid)
    # Rails.application.load_seed
    puts "Data Added Using Seeds"
  end

end
