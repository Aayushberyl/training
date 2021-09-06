class User < ApplicationRecord
  has_many :facts
  after_touch do |user|
    puts "You have touched an object"
  end
end
