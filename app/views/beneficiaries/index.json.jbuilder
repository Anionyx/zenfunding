json.array!(@beneficiaries) do |beneficiary|
  json.extract! beneficiary, :id, :name_first, :name_mid, :name_last, :ssn, :date_birth, :date_death, :policy_id, :dead_person_id
  json.url beneficiary_url(beneficiary, format: :json)
end
