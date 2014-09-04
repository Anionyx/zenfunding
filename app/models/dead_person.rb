class DeadPerson < ActiveRecord::Base
	has_many :policies
	has_many :beneficiaries, through: :policies
	has_many :documents
	has_many :financials
end
