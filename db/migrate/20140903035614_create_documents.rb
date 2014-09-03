class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.references :dead_person, index: true
      t.references :beneficiary, index: true
      t.references :policy, index: true

      t.timestamps
    end
  end
end
