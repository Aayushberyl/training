class Student < ApplicationRecord
    has_one :guardian
    has_many :certifieds
    has_many :certifications , through: :certifieds
    belongs_to :course
    has_many :feedbacks, as: :comments
    validates :name , :enrolled_date , presence: true 
    validates! :email , presence: true , uniqueness: {message: 'already in use'} , format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end