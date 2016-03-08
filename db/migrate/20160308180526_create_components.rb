class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.decimal :quantity

      t.timestamps
    end
  end
end
