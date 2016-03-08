class StockType < ActiveRecord::Base
  has_many :order_items
  has_many :stocks
  has_and_belongs_to_many :recipes
end
