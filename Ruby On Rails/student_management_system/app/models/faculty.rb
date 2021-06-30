class Faculty < ApplicationRecord
    has_many :feedbacks, as: :comments
    validates! :faculty_name, presence: {message: "must be given"}
end
