class Document < ActiveRecord::Base
  belongs_to :dead_person
  belongs_to :beneficiary
  belongs_to :policy
end
