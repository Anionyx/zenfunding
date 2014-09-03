class CreateNumberPolicies < ActiveRecord::Migration
  def change
    create_table :number_policies do |t|
      t.integer :face_value
      t.references :dead_person, index: true

      t.timestamps
    end
  end
end
