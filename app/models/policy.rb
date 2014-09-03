class Policy < ActiveRecord::Base
  belongs_to :dead_person
  has_many :beneficiaries
end
