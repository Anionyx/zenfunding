json.array!(@number_policies) do |number_policy|
  json.extract! number_policy, :id, :face_value, :dead_person_id
  json.url number_policy_url(number_policy, format: :json)
end
