json.array!(@documents) do |document|
  json.extract! document, :id, :name, :dead_person_id, :beneficiary_id, :policy_id
  json.url document_url(document, format: :json)
end
