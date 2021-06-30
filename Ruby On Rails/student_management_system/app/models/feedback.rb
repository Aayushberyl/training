class Feedback < ApplicationRecord
    belongs_to :comments, polymorphic: true
end
