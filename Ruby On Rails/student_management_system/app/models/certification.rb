class Certification < ApplicationRecord
    has_many :certifieds
    has_many :students , through: :certifieds
end
