class Certification < ApplicationRecord
    has_many :certifieds
    has_many :students , through: :certifieds
    validates :cert_name , presence: true
end
