class CreateNumberPolicies < ActiveRecord::Migration
  def change
    create_table :number_policies do |t|
      t.integer :policy_amount
      t.references :dead_person, index: true

      t.timestamps
    end
  end
end
