class Policy < ActiveRecord::Base
  belongs_to :dead_person
  has_may :beneficiaries
end
