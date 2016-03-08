FactoryGirl.define do
  factory :stock do
    initial_quantity 1.5
    current_quantity 1.5
    unit "MyString"
    purchase_date "2016-03-08"
    expiration_date "2016-03-08"
    purchase_price 1.5
    supplier "MyString"
    batch_number "MyString"
    supplier nil
    stock_type nil
  end
end
