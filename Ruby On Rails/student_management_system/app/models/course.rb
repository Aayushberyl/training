class Course < ApplicationRecord
    has_many :students , :dependent => :destroy
    has_one :faculty , :dependent => :destroy
end
