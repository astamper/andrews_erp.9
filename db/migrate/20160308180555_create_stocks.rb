class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.float :initial_quantity
      t.float :current_quantity
      t.string :unit
      t.date :purchase_date
      t.date :expiration_date
      t.float :purchase_price
      t.string :supplier
      t.string :batch_number
      t.references :supplier, index: true
      t.references :stock_type, index: true

      t.timestamps
    end
  end
end
