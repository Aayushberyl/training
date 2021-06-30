class Certified < ApplicationRecord
    belongs_to :certification
    belongs_to :student
    validates :certification_id , numerically: {less_than:7}
end
