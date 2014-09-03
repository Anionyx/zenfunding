class CreateDeadPeople < ActiveRecord::Migration
  def change
    create_table :dead_people do |t|
      t.string :name_first
      t.string :name_mid
      t.string :name_last
      t.date :date_death
      t.date :date_birth
      t.string :ssn
      t.string :cause

      t.timestamps
    end
  end
end
