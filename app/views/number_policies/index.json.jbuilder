json.array!(@number_policies) do |number_policy|
  json.extract! number_policy, :id, :policy_amount, :dead_person_id
  json.url number_policy_url(number_policy, format: :json)
end
