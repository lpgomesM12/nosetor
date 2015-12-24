json.array!(@st_bairros) do |st_bairro|
  json.extract! st_bairro, :id, :nome_bairro, :latitude, :longitude, :st_cidade_id
  json.url st_bairro_url(st_bairro, format: :json)
end
