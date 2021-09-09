class Product < ApplicationRecord
	has_many :customers , :dependent => :destory
	validates :name , :price , presence: true
end
