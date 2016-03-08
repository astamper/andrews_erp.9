json.array!(@components) do |component|
  json.extract! component, :id, :quantity
  json.url component_url(component, format: :json)
end
