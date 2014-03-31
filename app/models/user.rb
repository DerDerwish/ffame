class User < ActiveRecord::Base
	validates_presence_of :name, :password, :email, :active, :blocked, :verified
end