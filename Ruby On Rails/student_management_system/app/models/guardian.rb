class Guardian < ApplicationRecord
    belongs_to :student
    validates :contact , format: { with: /\A\d{10}\z/ ,message: "length should be 10" }
end
