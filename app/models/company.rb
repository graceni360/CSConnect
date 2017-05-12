class Company < ApplicationRecord
	validates :companyEmail, presence: true
	validates :name, presence: true

end
