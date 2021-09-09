class Product < ApplicationRecord
	has_many :customers , :dependent => :destroy 
	validates :name , :price , presence: true
end
