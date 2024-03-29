class CreateQuotationsAndReferences < ActiveRecord::Migration[6.0]
  def change
    create_table :quotations do |t|
      t.integer :code
      t.date :quotation_date
      t.string :currency
      t.text :credits
      t.text :payment_condition
      t.text :warranty
      t.references :client, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.datetime :deleted_at, index: true

      t.timestamps
    end
  end
end
