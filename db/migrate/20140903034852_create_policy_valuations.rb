class CreatePolicyValuations < ActiveRecord::Migration
  def change
    create_table :policy_valuations do |t|
      t.integer :amount
      t.date :date_assign
      t.references :policy, index: true
      t.references :dead_person, index: true

      t.timestamps
    end
  end
end
