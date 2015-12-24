class StEndereco < ActiveRecord::Base
  belongs_to :st_bairro
  belongs_to :st_cidade

  belongs_to :inclusao, :class_name => "User", :foreign_key => "user_inclusao"
  belongs_to :exclusao, :class_name => "User", :foreign_key => "user_exclusao"
end
