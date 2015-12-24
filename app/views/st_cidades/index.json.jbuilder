json.array!(@st_cidades) do |st_cidade|
  json.extract! st_cidade, :id, :nome_cidade, :st_estado_id
  json.url st_cidade_url(st_cidade, format: :json)
end
