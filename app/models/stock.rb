class Stock < ActiveRecord::Base
  belongs_to :supplier
  belongs_to :stock_type
  has_and_belongs_to_many :components
end
