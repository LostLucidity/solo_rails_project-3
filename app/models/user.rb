class User < ActiveRecord::Base
	has_many :archives
	has_one :profile
	has_secure_password
end
