class StTamanhoproduto < ActiveRecord::Base
  belongs_to :st_produtos


  TAMANHO = %w[UNICO PEQUENO MEDIO GRANDE]
end
