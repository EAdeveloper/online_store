class MyEmail < ApplicationRecord
	validates_presence_of :email, message: "Ops! Provide your email"
	validates_uniqueness_of :email, message: "Ops! this email is already registered"
end
