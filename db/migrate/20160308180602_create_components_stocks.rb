class CreateComponentsStocks < ActiveRecord::Migration
  def change
    create_table :components_stocks do |t|
      t.belongs_to :component, index: true
      t.belongs_to :stock, index: true
    end
  end
end
