class Job < ApplicationRecord

	validates :jobTitle, presence: { message: "Opportunity Title cannot be blank" }
	validates :jobDesc, presence: { message: "Opportunity Description cannot be blank" }
	validates :jobType, presence: { message: "Opportunity Type cannot be blank" }
	validates :startDate, presence: { message: "Opportunity Start Date cannot be blank" }
end
