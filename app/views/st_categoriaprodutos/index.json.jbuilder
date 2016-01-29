json.array!(@st_categoriaprodutos) do |st_categoriaproduto|
  json.extract! st_categoriaproduto, :id, :nome_categoria
  json.url st_categoriaproduto_url(st_categoriaproduto, format: :json)
end
