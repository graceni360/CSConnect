class EmailValidator < ActiveModel::EachValidator

#ensure email is in corect format (ex: someone@jcu.edu)
#if not, display the message
def validate_each(record, attribute, value)
	unless (value =~ /[a-zA-Z0-9]@jcu.edu/) 
		record.errors[attribute] << ("Email " << value << " is not a valid email for this site. Required format: something@jcu.edu")
	end
end

end

class Student < ApplicationRecord


	#self.primary_key = 'email'
	#ensure the email is unique, has no whitespaces, and runs through the validate each method...
	validates :email, uniqueness: { message: "%{value} is taken already." }, format: { without: /\s/ }, email: true
	validates :firstName, presence: { message: "First Name cannot be blank" }
	validates :lastName, presence: { message: "Last Name cannot be blank" }
	#validates :password, presence: { message: "Password cannot be blank" }
end