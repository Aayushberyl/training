class Faculty < ApplicationRecord
    has_many :feedbacks, as: :comments
end
