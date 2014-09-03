class CreatePolicies < ActiveRecord::Migration
  def change
    create_table :policies do |t|
      t.string :number_policy
      t.integer :face_value
      t.references :dead_person, index: true

      t.timestamps
    end
  end
end
