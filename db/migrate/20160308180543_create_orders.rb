class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :status
      t.string :first_name
      t.string :last_name
      t.date :fob_date
      t.string :fob_time
      t.boolean :paid
      t.string :shipping_type
      t.references :customer, index: true

      t.timestamps
    end
  end
end
