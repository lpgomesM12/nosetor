class StCategory < ActiveRecord::Base
  has_many :children, :class_name => "StCategory", :foreign_key => "father_id"
  belongs_to :father, :class_name => "StCategory", :foreign_key => "father_id"	

  belongs_to :inclusao, :class_name => "User", :foreign_key => "user_inclusao"
  belongs_to :exclusao, :class_name => "User", :foreign_key => "user_exclusao"





 def self.search(term)
   where("lower(nome_categoria)like ?", "%#{term.downcase}%")
 end


end
