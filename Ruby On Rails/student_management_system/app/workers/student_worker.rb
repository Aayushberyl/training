class StudentWorker
  include Sidekiq::Worker

  def perform()
    # Do something
    puts "Go Now"
  end
end
