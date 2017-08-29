class Property < ApplicationRecord
	belongs_to :user
	has_many :parkings
	has_many :users, :through => :parkings
end
