class User < ApplicationRecord
	#user name validation
	validates :name,  presence: true, length: { maximum: 50 }

	#user email validation
	before_save { email.downcase! }
	validates :name,  presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  #user password validation
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

	has_many :properties_created, :foreign_key => "owner_id", :class_name => "Property"
	has_many :parkings
	has_many :properties, :through => :parkings
end
