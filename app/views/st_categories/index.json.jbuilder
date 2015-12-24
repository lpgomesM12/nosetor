json.array!(@st_categories) do |st_category|
  json.extract! st_category, :id, :nome_categoria
  json.url st_category_url(st_category, format: :json)
end
