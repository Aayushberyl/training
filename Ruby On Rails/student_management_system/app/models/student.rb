class Student < ApplicationRecord
    has_one :guardian , :dependent => :destroy
    accepts_nested_attributes_for :guardian
    has_many :certifieds
    has_many :certifications , through: :certifieds
    belongs_to :course
    has_many :feedbacks, as: :comments , :dependent => :destroy
    validates :name , :enrolled_date , presence: true 
    validates :contact_no , format: { with: /\A\d{10}\z/ ,message: "length should be 10" }
    validates :email , presence: true , uniqueness: {message: 'already in use'} , format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end