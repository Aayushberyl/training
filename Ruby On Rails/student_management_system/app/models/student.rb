class Student < ApplicationRecord
    has_many :certifieds
    has_many :certifications , through: :certifieds
    belongs_to :course
    has_many :feedbacks, as: :comments
    validates :student_name , :enrolled_date , presence: true 
    validates :email , presence: true , format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end