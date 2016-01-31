class StEmpresa < ActiveRecord::Base
  belongs_to :st_endereco
  belongs_to :st_category
  accepts_nested_attributes_for :st_endereco, allow_destroy: true

  #validates :image, :attachment_presence => true
  has_attached_file :logo, :styles => { :medium => "300x300#", :thumb => "64x64#" }, default_url: "/images/normal/missing.png"
  #validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :logo, :content_type => %w(image/jpeg image/jpg image/png)

  
  #Presence
  validates :nome_empresa, :presence => { :message => 'Digite o nome da empresa.' }


  #iguality
  validate :busca_pagename_existente



 def self.search(term)
   where("lower(desc_palavrachave)like ?", "%#{term.downcase}%")
 end
 
 def busca_pagename_existente
 	errors.add(:page_name, "Este nome de pagina já está sendo utilizado.") if StEmpresa.find_by_page_name(self.page_name)
 end	 



end
