class Pilot < ApplicationRecord
	has_many_attached :pics
	validates :email , presence: true , uniqueness: {message: 'already in use'} , format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
