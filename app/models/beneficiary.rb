class Beneficiary < ActiveRecord::Base
  # a bene may or may not be associated with more than 1 policy
  has_many :policies 
  # we may find that a bene is associated with more than 1 deceased
  # but FOR NOW we'll assume associated with 1 deceased only
  belongs_to :dead_person
end
