class Certification < ApplicationRecord
    has_many :certifieds
    has_many :students , through: :certifieds
    validates :name , presence: true
    validates :fees , presence: true
    validates :duration , numericality: { less_than: 4 }
end
