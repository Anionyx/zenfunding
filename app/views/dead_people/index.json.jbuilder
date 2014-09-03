json.array!(@dead_people) do |dead_person|
  json.extract! dead_person, :id, :name_first, :name_mid, :name_last, :date_death, :date_birth, :ssn, :cause
  json.url dead_person_url(dead_person, format: :json)
end
