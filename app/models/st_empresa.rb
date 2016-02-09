class StEmpresa < ActiveRecord::Base
  belongs_to :st_endereco
  belongs_to :st_category
  accepts_nested_attributes_for :st_endereco, allow_destroy: true

  #validates :image, :attachment_presence => true

  #Produção
  #has_attached_file :logo, :styles => { :medium => "300x300#", :thumb => "64x64#" }, 
  #                         :storage => :s3,
  #                         :bucket  => 'kipertoapp',
  #                         :s3_credentials => {
  #                             :access_key_id => 'AKIAIVTKKZGEK7T7G5ZA',
  #                             :secret_access_key => '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'
  #                          },
  #                          :s3_permissions => 'private',
  #                         default_url: "/images/normal/missing.png"

  
   #Desenvolvimento
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
