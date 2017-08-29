class InfoPayment < ApplicationRecord
	has_many :payments
	has_many :parkings, :through => :payments
end
