json.array!(@st_enderecos) do |st_endereco|
  json.extract! st_endereco, :id, :nome_rua, :desc_quadra, :desc_lote, :desc_numero, :desc_complemento, :desc_cep, :latitude, :longitude, :st_bairro_id, :st_cidade_id
  json.url st_endereco_url(st_endereco, format: :json)
end
