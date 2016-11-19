class MyEmail < ApplicationRecord
	validates_presence_of :email, message: "Ops! Provide your email"
	validates_uniqueness_of :email, message: "Ops! this email is already registered"
	validates_format_of :email, with: Devise::email_regexp
end
