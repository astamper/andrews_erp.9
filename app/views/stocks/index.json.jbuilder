json.array!(@stocks) do |stock|
  json.extract! stock, :id, :initial_quantity, :current_quantity, :unit, :purchase_date, :expiration_date, :purchase_price, :supplier, :batch_number, :supplier_id, :stock_type_id
  json.url stock_url(stock, format: :json)
end
