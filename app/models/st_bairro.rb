class StBairro < ActiveRecord::Base
  belongs_to :st_cidade


 def self.search(term)
   where("lower(nome_bairro)like ?", "%#{term.downcase}%")
 end

end
