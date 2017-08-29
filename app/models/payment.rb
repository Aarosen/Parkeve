class Payment < ApplicationRecord
	belongs_to :parking
	belongs_to :info_payment
end
