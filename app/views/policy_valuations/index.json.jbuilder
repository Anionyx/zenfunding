json.array!(@policy_valuations) do |policy_valuation|
  json.extract! policy_valuation, :id, :amount, :date_assign, :policy_id, :dead_person_id
  json.url policy_valuation_url(policy_valuation, format: :json)
end
