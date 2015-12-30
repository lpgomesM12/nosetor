class StEmpresa < ActiveRecord::Base
  belongs_to :st_endereco
  belongs_to :st_category

    #validates :image, :attachment_presence => true
  has_attached_file :logo, :styles => { :medium => "300x300#", :thumb => "64x64#" }, default_url: "/images/normal/missing.png"
  #validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :logo, :content_type => %w(image/jpeg image/jpg image/png)

  
end
