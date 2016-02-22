class StItem < ActiveRecord::Base
  belongs_to :st_categoriaproduto



 def self.search(term)
   where("lower(nome_item)like ?", "%#{term.downcase}%")
 end

end
