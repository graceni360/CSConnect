#class AdminValidator < ActiveModel::EachValidator

#ensure email is in corect format (ex: someone@jcu.edu)
#if not, display the message
#def validate_each(record, attribute, value, key)
	#unless (value == key) 
	#	record.errors[attribute] << ("Username is incorrect")
	#end
#end

#end
class AdminLogin < ApplicationRecord
	#validates_with AdminValidator, fields: [:username, :password]
	validates :username, format: { with: /jcuAdmin/, message: "Wrong username" }
	validates :password, format: { with: /0pp0/, message: "Wrong password" }
end
