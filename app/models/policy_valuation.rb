class PolicyValuation < ActiveRecord::Base
  belongs_to :policy
  belongs_to :dead_person
end
