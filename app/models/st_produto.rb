class StProduto < ActiveRecord::Base
  belongs_to :st_categoriaproduto
  belongs_to :st_empresa
  has_many   :st_itemproduto
  has_many   :st_tamanhoproduto

  belongs_to :inclusao, :class_name => "User", :foreign_key => "user_inclusao"
  belongs_to :alteracao, :class_name => "User", :foreign_key => "user_alteracao"
  belongs_to :exclusao, :class_name => "User", :foreign_key => "user_exclusao"

end
