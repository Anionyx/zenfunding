json.array!(@financials) do |financial|
  json.extract! financial, :id, :transaction_item, :dead_person_id, :status, :date_payment, :payment_method, :description, :sequence, :amount
  json.url financial_url(financial, format: :json)
end
