class Customer < ActiveRecord::Base
  has_many :orders
  has_many :shipping_addresses
  validates_formatting_of :email, using: :email
  validates_formatting_of :phone, using: :us_phone
end
