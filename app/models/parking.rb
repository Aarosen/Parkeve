class Parking < ApplicationRecord
	belongs_to :user
	belongs_to :property
	has_many :payments
	has_many :info_payments, :through => :payments
end
