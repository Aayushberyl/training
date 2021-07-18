class CourseWorker
  include Sidekiq::Worker

  def perform()
    # Do something
    puts "Go Now ! Hey Sidekiq Server is Running @"
    Rails.application.load_seed
    puts "Data Added Using Seeds"
  end

end
