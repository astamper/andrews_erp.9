json.array!(@orders) do |order|
  json.extract! order, :id, :status, :first_name, :last_name, :fob_date, :fob_time, :paid, :shipping_type, :customer_id
  json.url order_url(order, format: :json)
end
