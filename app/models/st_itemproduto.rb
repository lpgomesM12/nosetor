class StItemproduto < ActiveRecord::Base
  belongs_to :st_item
  belongs_to :st_produto
end
