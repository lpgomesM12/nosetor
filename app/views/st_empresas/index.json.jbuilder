json.array!(@st_empresas) do |st_empresa|
  json.extract! st_empresa, :id, :nome_empresa, :desc_anuncioempresa, :tele_telefone1, :tele_telefone, :desc_palavrachave, :desc_cnpj, :st_endereco_id, :st_category_id
  json.url st_empresa_url(st_empresa, format: :json)
end
