class Student < ApplicationRecord
    has_many :certifieds
    has_many :certifications , through: :certifieds
    belongs_to :course
    has_many :feedbacks, as: :comments
end