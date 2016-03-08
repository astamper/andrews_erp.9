class Order < ActiveRecord::Base
  belongs_to :customer
  has_one :shipping_address
end
