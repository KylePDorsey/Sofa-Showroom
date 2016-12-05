class User < ApplicationRecord
	has_secure_password
	has_many :customers


	validates_presence_of :email, :first_name, :last_name, :password

	validates_uniqueness_of :email
end
