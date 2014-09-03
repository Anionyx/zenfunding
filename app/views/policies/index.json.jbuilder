json.array!(@policies) do |policy|
  json.extract! policy, :id, :number_policy, :face_value, :dead_person_id
  json.url policy_url(policy, format: :json)
end
