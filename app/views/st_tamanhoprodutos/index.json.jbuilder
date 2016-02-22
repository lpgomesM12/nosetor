json.array!(@st_tamanhoprodutos) do |st_tamanhoproduto|
  json.extract! st_tamanhoproduto, :id, :desc_tamanho, :valr_produto, :st_produtos_id
  json.url st_tamanhoproduto_url(st_tamanhoproduto, format: :json)
end
