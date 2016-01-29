json.array!(@st_itemprodutos) do |st_itemproduto|
  json.extract! st_itemproduto, :id, :st_item_id, :st_produto_id
  json.url st_itemproduto_url(st_itemproduto, format: :json)
end
