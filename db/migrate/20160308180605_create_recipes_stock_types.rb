class CreateRecipesStockTypes < ActiveRecord::Migration
  def change
    create_table :recipes_stock_types do |t|
      t.belongs_to :recipe, index: true
      t.belongs_to :stock_type, index: true
    end
  end
end
