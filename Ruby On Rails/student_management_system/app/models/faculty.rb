class Faculty < ApplicationRecord
    has_many :feedbacks, as: :comments
    validates! :name, presence: {message: "must be given"}
end
