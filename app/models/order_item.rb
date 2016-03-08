class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :stock_type
end
