class Customer < ApplicationRecord
	belongs_to :product
	validates :name , :contact , presence: true
	validates :contact , format: { with: /\A\d{10}\z/ ,message: "length should be 10" }
end
