class Feedback < ApplicationRecord
    belongs_to :comments, polymorphic: true
    validates :content , length: {minimum:2 , maximum:200}
end
