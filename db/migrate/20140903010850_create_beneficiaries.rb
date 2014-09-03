class CreateBeneficiaries < ActiveRecord::Migration
  def change
    create_table :beneficiaries do |t|
      t.string :name_first
      t.string :name_mid
      t.string :name_last
      t.string :ssn
      t.date :date_birth
      t.date :date_death
      t.references :policy, index: true
      t.references :dead_person, index: true

      t.timestamps
    end
  end
end
