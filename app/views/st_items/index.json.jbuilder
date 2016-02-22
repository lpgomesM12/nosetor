json.array!(@st_items) do |st_item|
  json.extract! st_item, :id, :nome_item, :st_categoriaproduto_id
  json.url st_item_url(st_item, format: :json)
end
