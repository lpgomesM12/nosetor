json.array!(@st_estados) do |st_estado|
  json.extract! st_estado, :id, :nome_estado, :sigl_estado
  json.url st_estado_url(st_estado, format: :json)
end
