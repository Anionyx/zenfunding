class DeadPerson < ActiveRecord::Base
	has_many :policies
	has_many :beneficiaries, through: :policies
end
