class Beneficiary < ActiveRecord::Base
  # a bene may or may not be associated with more than 1 policy
  has_many :policies 
  # we may find that a bene is associated with more than 1 deceased
  # but FOR NOW we'll assume associated with 1 deceased only
  has_many :dead_people, through: :policies

  def policy
  	id = self.policy_id
  	Policy.find(id)
  end

end