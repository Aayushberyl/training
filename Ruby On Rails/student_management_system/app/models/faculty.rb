class Faculty < ApplicationRecord
    has_many :feedbacks, as: :comments , :dependent => :destroy
    belongs_to :course
    validates :name, presence: {message: "must be given"}
end
