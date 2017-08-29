class User < ApplicationRecord
	has_many :properties_created, :foreign_key => "owner_id", :class_name => "Property"
	has_many :parkings
	has_many :properties, :through => :parkings
end
