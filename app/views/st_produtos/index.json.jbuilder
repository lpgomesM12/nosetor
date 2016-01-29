json.array!(@st_produtos) do |st_produto|
  json.extract! st_produto, :id, :nome_produto, :valr_produto, :st_categoriaproduto_id, :st_empresa_id
  json.url st_produto_url(st_produto, format: :json)
end
