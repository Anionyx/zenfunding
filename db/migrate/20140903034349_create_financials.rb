class CreateFinancials < ActiveRecord::Migration
  def change
    create_table :financials do |t|
      t.string :transaction_item
      t.references :dead_person, index: true
      t.string :status
      t.date :date_payment
      t.string :payment_method
      t.string :description
      t.integer :sequence
      t.string :amount

      t.timestamps
    end
  end
end
