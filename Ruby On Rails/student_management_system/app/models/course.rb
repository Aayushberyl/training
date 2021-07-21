class Course < ApplicationRecord
    has_many :students , :dependent => :destroy
    has_one :faculty , :dependent => :destroy
    validates :name , presence: true 
    validates :fees , presence: true
    validates :duration , numericality: { less_than: 4 }
end
